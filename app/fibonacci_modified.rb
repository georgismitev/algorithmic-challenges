a, b, n = gets.strip.split(' ').map(&:to_i)

series = Array.new(n + 1)
series[1] = a
series[2] = b

i = 3
while i <= n do
  series[i] = series[i - 1] * series[i - 1] + series[i - 2]
  i += 1
end

puts series[i - 1]
