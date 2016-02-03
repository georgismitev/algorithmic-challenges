MAX_NUMBER = 500_001

sieve = Array.new(MAX_NUMBER) { 0 }
sieve[0] = 1
sieve[1] = 1
primes = []
primes.push(1)
primes_count = 0
i = 2
while i < MAX_NUMBER && primes_count < 40001 do
  if sieve[i] == 0
    primes_count += 1
    primes.push(i)
    j = i * i
    while j < MAX_NUMBER do
      sieve[j] = 1
      j += i
    end
  end
  i += 1
end

gets.to_i.times { puts primes[gets.to_i] }
