MAX = 3001
squares = Array.new(MAX)
i = 1
while i < MAX do
  squares[i] = i * i
  i += 1
end

gets.to_i.times do
  n = gets.to_i
  max_product = -1

  1.upto(n / 3 + 1) do |a|
    next if 2 * n - 2 * a == 0
    b = (squares[n] - 2 * n * a) / (2 * n - 2 * a)
    c = n - a - b
    if c > 0 && c > b && c > a && b > a && squares[a] + squares[b] == squares[n - a - b]
      max_product = [a * b * c, max_product].max
    end
  end

  puts max_product
end
