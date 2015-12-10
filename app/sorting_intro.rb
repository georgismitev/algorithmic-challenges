v = gets.to_i
n = gets.to_i
array = gets.strip.split(' ').map(&:to_i)

s, e = 0, array.size - 1

while s <= e do
  m = (s + e) / 2
  if array[m] == v
    puts m
    break
  elsif array[m] > v
    e = m - 1
  else
    s = m + 1
  end
end
