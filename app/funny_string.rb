gets.to_i.times do
  s = gets.strip
  size = s.size
  i = 1
  while i < size do
    break if (s[i].ord - s[i - 1].ord).abs != (s[size - i].ord - s[size - i - 1].ord).abs
    i += 1
  end
  if i == size
    puts 'Funny'
  else
    puts 'Not Funny'
  end
end
