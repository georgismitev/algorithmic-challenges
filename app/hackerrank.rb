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
    s.to_s.length > 9 ? s.to_s[-9..-1].to_i : s
  end

  def self.facts(to = 2500)
    @facts ||= begin
      facts = Array.new(to)
      facts[0] = 1
      facts[1] = 1
      facts[2] = 2

      i = 3
      while i <= facts.length - 1 do
        facts[i] = facts[i - 1] * i
        i += 1
      end

      facts
    end
  end

  def self.build_list(string)
    permutations = SortedSet.new
    used = Array.new(string.length) { 0 }
    generate_permutations(permutations, [], string, used, 0).to_a
  end

  def self.generate_permutations(permutations, current_permutation, string, used, last_index)
    permutations.add(current_permutation.join) if current_permutation.length > 0

    last_index.upto(string.length - 1) do |i|
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
    while i < special_multiples.length do
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
      while i < array_combinations.length do
        new_combinations = []
        ['0', '9'].each do |element|
          j = 0
          while j < array_combinations[i - 1].length do
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

  def self.reverse_game(n, k)
    if k < n / 2
      2 * k + 1
    else
      2 * (n - k - 1)
    end
  end

  def self.strange_grid(r, c)
    row = ((r - 1) / 2) * 10
    column = (r - 1) % 2 == 0 ? (c - 1) * 2 : c * 2 - 1
    row + column
  end

  def self.even_odd_query(array, x, y)
    if x == y
      array[x - 1] % 2 == 1 ? 'Odd' : 'Even'
    else
      array[x] == 0 || array[x - 1] % 2 == 1 ? 'Odd' : 'Even'
    end
  end

  def self.find_gallons(a, b)
    gallons = Set.new
    gallons.add(a)
    gallons.add(b)

    processed = Set.new
    less_than_b = [b]

    while true do
      processing = less_than_b.pop
      ta = a - b + processing
      processed.add(processing)

      while ta > 0 do
        gallons.add(ta)
        less_than_b.push(ta) if ta < b && !processed.include?(ta)
        ta -= b
      end

      break if less_than_b.empty?
    end

    gallons.to_a
  end

  def self.time_conversion(time)
    if time[-2..-1] == 'PM'
      if time[0..1].to_i > 12
        time[0..1] = '%.2d' % ((time[0..1].to_i + 12) % 24)
      elsif time[0..1].to_i < 12
        time[0..1] = (time[0..1].to_i + 12).to_s
      end
    else
      if time[0..1].to_i >= 11
        time[0..1] = '%.2d' % ((time[0..1].to_i + 12) % 24)
      end
    end

    time[0..-3]
  end

  def self.cut_the_sticks(array)
    cuts = []
    n = array.length
    i = 0

    array = array.sort

    while i < n do
      while array[i] == 0 do
        i += 1
      end
      min = array[i]
      j = i
      break if j == n
      cuts.push(n - j)
      while j < n do
        array[j] = array[j] - min >= 0 ? array[j] - min : 0
        j += 1
      end
    end

    cuts
  end

  def self.anagramify(s)
    if s.length % 2 == 1
      -1
    else
      size = s.length / 2
      a = s[0..size - 1]
      b = s[size..-1]
      alphabet_a = Hash.new { |hash, key| hash[key] = 0 }
      alphabet_b = Hash.new { |hash, key| hash[key] = 0 }

      i = 0
      while i < a.length do
        alphabet_a[a[i]] += 1
        i += 1
      end

      i = 0
      while i < b.length do
        alphabet_b[b[i]] += 1
        i += 1
      end

      alphabet_b.each_pair do |k, v|
        if v >= alphabet_a[k]
          alphabet_b[k] -= alphabet_a[k]
        else
          alphabet_b[k] = 0
        end
      end

      chars_to_replace = 0

      alphabet_b.each_pair { |k, v| chars_to_replace += v }

      chars_to_replace
    end
  end

  def self.find_anagram_pairs(s)
    anagram_size = 1
    anagram_hash = Hash.new { |hash, key| hash[key] = 0 }

    while anagram_size < s.length do
      i = 0
      while i < s.length - anagram_size + 1 do
        anagram_hash[s[i..i + anagram_size - 1].split('').sort] += 1
        i += 1
      end
      anagram_size += 1
    end

    pairs = 0
    anagram_hash.each_pair { |k, v| pairs += v * (v - 1) / 2 if v >= 2 }
    pairs
  end

  def self.valid_sherlock_string?(s)
    alphabet = Hash.new { |hash, key| hash[key] = 0 }
    i = 0

    while i < s.length do
      alphabet[s[i]] += 1
      i += 1
    end

    numbers = Hash.new { |hash, key| hash[key] = 0 }
    alphabet.each_pair { |k, v| numbers[v] += 1 }

    if numbers.length == 1 || (numbers.length == 2 && numbers.values.include?(1))
      'YES'
    else
      'NO'
    end
  end

  def self.morgan_and_a_string?(a, b)
    s = b + a
    i = 0
    j = 0
    k = 0
    z = 0
    output = Array.new(s.length)
    suffix_array = CreateInvertedSuffixArray.from(s)

    while k < s.length && i < a.length && j < b.length do
      if suffix_array[b.length + i] < suffix_array[j]
        output[z] = a[i]
        z += 1
        i += 1
      else
        output[z] = b[j]
        z += 1
        j += 1
      end
      k += 1
    end

    while i < a.length do
      output[z] = a[i]
      z += 1
      i += 1
    end

    while j < b.length do
      output[z] = b[j]
      z += 1
      j += 1
    end

    output.join
  end
end
