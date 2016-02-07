MAX_PRIME_LIMIT = 500001
MAX_TRIANGLE    = 42001

def self.generate_primes_array(max = MAX_PRIME_LIMIT)
  sieve = Array.new(max) { 0 }
  sieve[0] = 1
  sieve[1] = 1
  primes = []
  
  i = 2
  while i < max do
    if sieve[i] == 0
      primes.push(i)
      j = i * i
      while j < max do
        sieve[j] = 1
        j += i
      end
    end
    i += 1
  end

  primes
end

def self.number_of_divisors(n, primes)
  return 1 if n == 1
  factors = 1
  remainder = n

  i = 0
  while i < primes.length do
    return factors * 2 if primes[i] * primes[i] > n

    exponent = 1
    while remainder % primes[i] == 0 do
      exponent += 1
      remainder /= primes[i]
    end

    factors *= exponent
    return factors if remainder == 1
    i += 1
  end

  factors
end

def self.generate_triangle_numbers(primes)
  numbers = Array.new(MAX_TRIANGLE)
  numbers[0] = 0
  previous_sum = 0
  i = 1

  while i < MAX_TRIANGLE do
    previous_sum += i
    divisors = number_of_divisors(previous_sum, primes)
    numbers[i] = [previous_sum, divisors]
    i += 1
  end

  numbers
end

primes = generate_primes_array
triangle_numbers = generate_triangle_numbers(primes)

gets.to_i.times do
  n = gets.to_i
  i = 1
  while i < MAX_TRIANGLE do
    if triangle_numbers[i][1] > n
      puts triangle_numbers[i][0]
      break
    end
    i += 1
  end
end
