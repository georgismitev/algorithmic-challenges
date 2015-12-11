n, m = gets.strip.split(' ').map(&:to_i)

bits = Array.new(n)
n.times do |i|
  bits[i] = gets.strip.split('').map(&:to_i)
end

max_tuples = []
max_value = 0

i = 0

while i < n do
  j = i + 1
  while j < n do
    k = 0
    new_value = 0
    while k < m do
      new_value += bits[i][k] | bits[j][k]
      k += 1
    end
    if new_value > max_value
      max_tuples = [[i, j]]
      max_value = new_value
    elsif new_value == max_value
      max_tuples.push([i, j])
    end
    j += 1
  end
  i += 1
end

puts max_value
puts max_tuples.size
