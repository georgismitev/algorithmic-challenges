n = gets.to_i
max = - 1
a = n / 3

1.upto(n) do |b|
  b.upto(n) do |c|
    max = [a * b * c, max].max if a + b + c == n
  end
end

puts max
