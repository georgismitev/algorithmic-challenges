gets.to_i.times do
  s1 = gets.strip.split('')
  s2 = gets.strip.split('')
  if s1 & s2 != []
    puts 'YES'
  else
    puts 'NO'
  end
end
