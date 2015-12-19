gets.to_i.times do
  s = gets.strip
  operations = 0

  i = 0

  while i < s.size / 2 do
    operations += (s[i].ord - s[s.size - i - 1].ord).abs
    i += 1
  end

  puts operations
end
