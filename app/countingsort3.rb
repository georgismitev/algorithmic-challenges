n = gets.to_i
array = Array.new(n) { 0 }

n.times do |i|
  list = gets.strip.split(' ')
  index = list[0].to_i
  array[index] += 1
end

count = array[0]
output = Array.new(100)
i = 0
while i < 100 do
  output[i] = count
  i += 1
  count += array[i] if i < array.length
end

puts output.join(' ')
