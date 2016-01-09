n = gets.to_i
array = Array.new(n) { [0, []] }
max_value = -1

n.times do |i|
  list = gets.strip.split(' ')
  index = list[0].to_i
  array[index][0] += 1
  array[index][1].push([i, list[1]])
  max_value = [max_value, index].max
end

output = Array.new(n)
i = 0
k = 0
while i < max_value + 1 do
  array[i][1].each do |j|
    output[k] = j[0] < n / 2 ? '-' : j[1]
    k += 1
  end

  i += 1
end

puts output.join(' ')
