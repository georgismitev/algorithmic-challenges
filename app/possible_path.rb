def self.gcd(a, b)
  b == 0 ? a : gcd(b, a % b)
end

gets.to_i.times do
  list = gets.strip.split(' ').map(&:to_i)
  a, b, x, y = list[0], list[1], list[2], list[3]
  if gcd(a, b) == gcd(x, y)
    puts 'YES'
  else
    puts 'NO'
  end
end
