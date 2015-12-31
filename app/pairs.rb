n, k = gets.strip.split(' ').map(&:to_i)
set = gets.strip.split(' ').map(&:to_i)
numbers_hash = {}

i = 0
while i < set.length do
  numbers_hash[set[i]] = 1
  i += 1
end

pairs = 0

i = 0
while i < set.length do
  pairs += 1 if numbers_hash[set[i] + k]
  i += 1
end

puts pairs
