require 'set'

def self.find_divisors(n)
  divisors = SortedSet.new
  divisors.add(n) if n % 2 == 0

  i = 2
  while i * i <= n do
    if n % i == 0
      divisors.add(i) if i % 2 == 0
      divisors.add(n / i) if (n / i) % 2 == 0
    end
    i += 1
  end

  divisors.to_a
end

gets.to_i.times do
  puts find_divisors(gets.to_i).size
end
