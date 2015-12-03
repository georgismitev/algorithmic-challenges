def self.gcd(a, b)
  b == 0 ? a : gcd(b, a % b)
end

gets.strip.to_i.times do
  list = gets.strip.split(' ').map(&:to_i)
  x1 = list[0]
  y1 = list[1]
  x2 = list[2]
  y2 = list[3]
  a = (x1 - x2).abs
  b = (y1 - y2).abs
  puts gcd(a, b) - 1
end
