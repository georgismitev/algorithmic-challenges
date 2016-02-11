require 'set'

MAX = 28123

def self.map_primes
  primes = { }
  sieve = Array.new(MAX + 1) { 0 }
  sieve[0] = 1
  sieve[1] = 1
  i = 2
  while i <= MAX do
    if sieve[i] == 0
      primes[i] = 1
      j = i * i
      while j <= MAX do
        sieve[j] = 1
        j += i
      end
    end
    i += 1
  end
  primes
end

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

def self.abundant?(n)
  proper_divisors_sum(n) > n
end

def self.find_abundant_numbers(primes)
  abundant_numbers = Array.new(MAX + 1)
  i = 1
  while i <= MAX do
    abundant_numbers[i] = !primes[i] && abundant?(i) ? 1 : 0
    i += 1
  end
  abundant_numbers
end

def self.map_abundant_sums(primes)
  i = 1
  numbers = find_abundant_numbers(primes)
  numbers_so_far = []
  abundant_sums = Array.new(MAX + 1) { 0 }

  while i <= MAX do
    if !primes[i] && numbers[i] == 1 
      numbers_so_far.each { |n| abundant_sums[i + n] = 1 if i + n <= MAX }
      abundant_sums[i + i] = 1 if i + i <= MAX
      numbers_so_far.push(i)
    end

    i += 1
  end

  abundant_sums
end

primes = map_primes
abundant_sums = map_abundant_sums(primes)

gets.to_i.times do
  n = gets.to_i
  if n > 28123 || abundant_sums[n] == 1
    puts 'YES'
  else
    puts 'NO'
  end
end
