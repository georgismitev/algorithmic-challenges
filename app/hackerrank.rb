require 'pry'

# helper class to test certain pieces of code
class HackerRank
  def self.gcd(a, b)
    b == 0 ? a : gcd(b, a % b)
  end

  def self.sumar_linear(x1, y1, x2, y2)
    return [y1, y2].max - [y1, y2].min - 1 if x1 == x2

    number_of_ys = 0
    min = x2 > x1 ? x1 : x2
    max = x2 > x1 ? x2 : x1

    xi = min + 1

    while xi < max do
      yi = ((xi - x1) * (y2 - y1)) / ((x2 - x1) * 1.0) + y1
      number_of_ys += 1 if yi % 1 == 0
      xi += 1
    end

    number_of_ys
  end

  def self.sumar(x1, y1, x2, y2)
    a = (x1 - x2).abs
    b = (y1 - y2).abs
    gcd(a, b) - 1
  end

  def self.find_divisors(n)
    divisors = SortedSet.new
    divisors.add(1)
    divisors.add(n)

    i = 2
    while i * i <= n do
      if n % i == 0
        divisors.add(i)
        divisors.add(n / i)
      end
      i += 1
    end

    divisors.to_a
  end

  def self.sherlock_permutation(n, m)
    (facts[n + m - 1] / (facts[n] * facts[m - 1])) % 1000000007
  end

  def self.candy(n, k)
    s = (facts[n + k - 1] / (facts[k] * facts[n - 1]))
    s.to_s.size > 9 ? s.to_s[-9..-1].to_i : s
  end

  def self.facts(to = 2500)
    @facts ||= begin
      facts = Array.new(to)
      facts[0] = 1
      facts[1] = 1
      facts[2] = 2

      i = 3
      while i <= facts.size - 1 do
        facts[i] = facts[i - 1] * i
        i += 1
      end

      facts
    end
  end

  def self.build_list(string)
    permutations = SortedSet.new
    used = Array.new(string.size) { 0 }
    generate_permutations(permutations, [], string, used, 0).to_a
  end

  def self.generate_permutations(permutations, current_permutation, string, used, last_index)
    permutations.add(current_permutation.join) if current_permutation.size > 0

    last_index.upto(string.size - 1) do |i|
      if used[i] == 0
        current_permutation.push(string[i])
        used[i] = 1
        last_index += 1
        generate_permutations(permutations, current_permutation, string, used, last_index)
        # last_index -= 1
        used[i] = 0
        current_permutation.pop
      end
    end

    permutations
  end

  MATRIX_MOD = 1000000007

  def self.matrix_facts(to = 2000007)
    @matrix_facts ||= begin
      f = Array.new(to)
      f[0] = 1
      f[1] = 1

      i = 2
      while i < to do
        f[i] = (f[i - 1] * i) % MATRIX_MOD
        i += 1
      end

      f
    end
  end

  def self.matrix_tracing(m, n)
    facts_sum = matrix_facts[m + n - 2]
    facts_n = InverseModule.of(matrix_facts[n - 1], MATRIX_MOD)
    facts_m = InverseModule.of(matrix_facts[m - 1], MATRIX_MOD)
    (facts_sum * facts_m * facts_n) % MATRIX_MOD
  end

  def self.special_multiple(n)
    i = 1
    while i < special_multiples.size do
      special_multiples[i].each do |combination_number|
        number = combination_number.to_i
        return number if number > 0 && number % n == 0
      end
      i += 1
    end
  end

  def self.special_multiples
    @special_multiples ||= begin
      max = 12
      array_combinations = Array.new(max) { [] }
      array_combinations[0] = ['0', '9']

      i = 1
      while i < array_combinations.size do
        new_combinations = []
        ['0', '9'].each do |element|
          j = 0
          while j < array_combinations[i - 1].size do
            new_combinations.push(array_combinations[i - 1][j] + element)
            j += 1
          end
        end
        array_combinations[i] = new_combinations.sort
        i += 1
      end

      array_combinations
    end
  end

  def self.possible_path(a, b, x, y)
    if gcd(a, b) == gcd(x, y)
      'YES'
    else
      'NO'
    end
  end
end
