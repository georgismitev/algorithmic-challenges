def sum(array, i, j)
  array[i][j] +
  array[i][j + 1] +
  array[i][j + 2] + 
  array[i + 1][j + 1] +
  array[i + 2][j] + 
  array[i + 2][j + 1] +
  array[i + 2][j + 2]
end

array = Array.new(6)
6.times { |i| array[i] = gets.strip.split.map(&:to_i) }

max_sum = -65

i = 0
while i < 4 do
  j = 0
  while j < 4 do
    max_sum = [max_sum, sum(array, i, j)].max
    j += 1
  end
  i += 1
end

puts max_sum
