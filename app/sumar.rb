gets.strip.to_i.times do
  list = gets.strip.split(' ').map(&:to_i)
  x1 = list[0]
  y1 = list[1]
  x2 = list[2]
  y2 = list[3]
  x1 *= -1 if x1 < 0
  x2 *= -1 if x2 < 0
  y1 *= -1 if y1 < 0
  y2 *= -1 if y2 < 0
  xi = x1 + 1
  number_of_ys = 0
  while xi < x2 do
    yi = ((xi - x1) * (y2 - y1)) / ((x2 - x1) * 1.0) + y1
    number_of_ys += 1 if yi % 1 == 0
    xi += 1
  end
  puts number_of_ys
end
