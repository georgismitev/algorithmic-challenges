MAX_PRIMES = 1000001

def self.generate_primes
  primes = []
  array = Array.new(MAX_PRIMES) { 0 }
  array[0] = 1
  array[1] = 1

  i = 2
  while i < MAX_PRIMES do
    if array[i] == 0
      primes.push(i)
      j = i * i
      while j < MAX_PRIMES do
        array[j] = 1
        j += i
      end
    end
    i += 1
  end

  primes
end

def self.largest_prime_factor(n, primes)
  max = 0

  i = 0
  while i < primes.length && n > 1 do
    if n % primes[i] == 0
      max = primes[i]
      while n % primes[i] == 0
        n /= primes[i]
      end
      break if n == 1
    end
    i += 1
  end

  n > 1 ? n : max
end

primes = generate_primes
gets.to_i.times { puts largest_prime_factor(gets.to_i, primes) }
