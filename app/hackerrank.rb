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
end
