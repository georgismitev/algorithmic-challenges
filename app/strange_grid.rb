list = gets.strip.split(' ').map(&:to_i)
r = list[0]
c = list[1]
row = ((r - 1) / 2) * 10
column = (r - 1) % 2 == 0 ? (c - 1) * 2 : c * 2 - 1
puts row + column
