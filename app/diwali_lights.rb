gets.to_i.times do
  n = gets.to_i
  puts (2 ** n - 1) % 100000
end
