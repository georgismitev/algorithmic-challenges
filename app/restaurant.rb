require 'set'

def self.find_divisors(n)
  divisors = SortedSet.new
  divisors.add(1)
  divisors.add(n)

  i = 2
  while i * i <= n do
    if n % i == 0
      divisors.add(i)
      divisors.add(n / i)
    end
    i += 1
  end

  divisors.to_a
end

gets.to_i.times do
  list = gets.strip.split(' ').map(&:to_i)
  l, b = list[0], list[1]

  max_div = 0
  squares = 0
  (find_divisors(l) & find_divisors(b)).each do |div|
    squares = (l / div) * (b / div) if div > max_div
  end

  puts squares
end
