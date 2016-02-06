def self.generate_primes(max = 350001)
  @generated_primes ||= begin
    primes = { }
    sieve = Array.new(max) { 0 }
    sieve[0] = 1
    sieve[1] = 1
    primes[0] = 0
    primes[1] = 0

    i = 2
    while i < max do
      if sieve[i] == 0
        primes[i] = primes[i - 1] + 1
        j = i * i
        while j < max do
          sieve[j] = 1
          j += i
        end
      else
        primes[i] = primes[i - 1]
      end
      i += 1
    end

    primes
  end
end

def self.generate_tile_combinations
  @generated_tile_combinations ||= begin
    dp = Array.new(41) { 0 }
    dp[0] = 1
    dp[1] = 1
    dp[2] = 1
    dp[3] = 1

    i = 4
    while i < 41 do
      dp[i] = dp[i - 1] + dp[i - 4]
      i += 1
    end

    dp
  end
end

primes = generate_primes
tiles = generate_tile_combinations
gets.to_i.times { puts primes[tiles[gets.to_i]] }
