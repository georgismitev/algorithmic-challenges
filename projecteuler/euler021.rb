require 'set'

MAX = 100001

def self.proper_divisors(n)
  divisors = Set.new
  divisors.add(1)

  i = 2
  while i * i <= n do
    if n % i == 0
      divisors.add(i)
      divisors.add(n / i)
    end

    i += 1
  end

  divisors
end

def self.proper_divisors_sum(n)
  sum = 0
  proper_divisors(n).each { |d| sum += d }
  sum
end

def self.generate_proper_sums
  numbers = Array.new(MAX)

  i = 1
  while i <= MAX do
    numbers[i] = proper_divisors_sum(i)
    i += 1
  end

  numbers
end

def self.find_amicable_numbers(numbers)
  i = 1
  amicable_numbers = SortedSet.new

  while i <= MAX do
    if numbers[numbers[i]] == i && i != numbers[i]
      amicable_numbers.add(i)
      amicable_numbers.add(numbers[i])
    end
    i += 1
  end

  amicable_numbers
end

def self.generate_amicable_sums(numbers)
  sum = 0
  sums = Array.new(MAX)
  index = 0
  i = 1
  while i <= MAX do
    if numbers[index] == i
      sum += numbers[index]
      index += 1
    end

    sums[i] = sum
    i += 1
  end

  sums
end

# proper_sums = generate_proper_sums
# amicable_numbers = find_amicable_numbers(proper_sums)
amicable_numbers = [220, 284, 1184, 1210, 2620, 2924, 5020, 5564, 6232, 6368, 10744, 10856, 12285, 14595, 17296, 18416, 63020, 66928, 66992, 67095, 69615, 71145, 76084, 79750, 87633, 88730]
amicable_sums = generate_amicable_sums(amicable_numbers)
gets.to_i.times { puts amicable_sums[gets.to_i] }
