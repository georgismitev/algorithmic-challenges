MAX = 1_800_000 + 7

def self.generate_primes
  @generated_primes ||= begin
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
end

primes = generate_primes
n = gets.to_i
city_scores = gets.strip.split.map(&:to_i)

prime_scores = { }

n.times do |i|
  city_scores.combination(i + 1).each do |combination|
    csum = combination.inject(0) { |sum, e| sum += e }
    prime_scores[csum] = 1 if primes[csum]
  end
end

puts prime_scores.keys.length
