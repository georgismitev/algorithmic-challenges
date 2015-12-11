gets.to_i.times do
  b, w = gets.strip.split(' ').map(&:to_i)
  x, y, z = gets.strip.split(' ').map(&:to_i)
  puts b * ([x, y + z].min) + w * ([y, x + z].min)
end
