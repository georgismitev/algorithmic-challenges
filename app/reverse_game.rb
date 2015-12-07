gets.to_i.times do
  list = gets.strip.split(' ').map(&:to_i)
  n = list[0]
  k = list[1]
  if k < n / 2
    puts 2 * k + 1
  else
    puts 2 * (n - k - 1)
  end
end
