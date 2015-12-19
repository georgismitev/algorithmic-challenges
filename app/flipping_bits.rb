gets.to_i.times do
  puts gets.to_i ^ ((1 << 32) - 1)
end
