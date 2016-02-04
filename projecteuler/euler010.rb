MAX = 1000001
prime_sums = { }
sieve = Array.new(MAX) { 0 }
sieve[0] = 1
sieve[1] = 1
i = 2
previous_sum = 0
while i < MAX do
  if sieve[i] == 0
    prime_sums[i] = previous_sum + i
    previous_sum += i
    j = i * i
    while j < MAX do
      sieve[j] = 1
      j += i
    end
  else
    prime_sums[i] = previous_sum
  end
  i += 1
end

gets.to_i.times { puts prime_sums[gets.to_i] }
