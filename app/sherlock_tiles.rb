list = gets.strip.split(' ').map(&:to_i)
l = list[0]
s1 = list[1]
s2 = list[2]

gets.to_i.times do
  puts (((l - Math.sqrt(gets.to_f)) * Math.sqrt(2)) / (s2 - s1)).abs
end
