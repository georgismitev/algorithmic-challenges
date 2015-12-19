n = gets.to_i
array = gets.strip.split(' ').map(&:to_i)

result = array[0]
i = 1
while i < array.size do
  result ^= array[i]
  i += 1
end

puts result
