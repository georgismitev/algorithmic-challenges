n = gets.to_i
array = gets.strip.split.map(&:to_i)
output = Array.new(n)
i = n - 1
while i >= 0 do
  output[n - i - 1] = array[i]
  i -= 1
end
puts output.join(' ')
