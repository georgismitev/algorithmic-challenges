gets.to_i.times do
  list = gets.strip.split(' ').map(&:to_i)
  px = list[0]
  py = list[1]
  qx = list[2]
  qy = list[3]
  puts "#{2 * qx - px} #{2 * qy - py}"
end
