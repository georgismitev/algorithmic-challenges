gets.to_i.times do
  list = gets.strip.split(' ').map(&:to_i)
  a = list[0]
  b = list[1]
  squares = 0

  sqrt_a = Math.sqrt(a).floor
  sqrt_b = Math.sqrt(b).ceil

  i = sqrt_a
  while i <= sqrt_b do
    square = i * i
    squares += 1 if square >= a && square <= b
    break if square > b
    i += 1
  end

  puts squares
end
