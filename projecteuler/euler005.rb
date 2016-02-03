MAX = 41

def self.esieve
  @esieve ||= begin
    sieve = Array.new(MAX) { 0 }
    sieve[0] = 1
    sieve[1] = 1

    i = 2
    while i < MAX do
      if sieve[i] == 0
        j = i * i
        while j < MAX do
          sieve[j] = 1
          j += i
        end
      end
      i += 1
    end

    sieve
  end
end

def self.prime?(n)
  esieve[n] == 0
end

gets.to_i.times do
  n = gets.to_i
  total = 1
  skip_hash = { }
  i = 2
  while i <= n do
    if !skip_hash[i] && prime?(i)
      j = i
      while j <= n do
        skip_hash[j] = 1
        j *= i
      end
      j /= i
      total *= j
    end
    i += 1
  end
  puts total
end
