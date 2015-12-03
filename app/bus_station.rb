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

n = gets.to_i
groups = gets.strip.split(' ').map(&:to_i)

max_x = groups[0]
min_bus_size = groups[0]
i = 1
while i < groups.size do
  max_x += groups[i]
  min_bus_size = [min_bus_size, groups[i]].max
  i += 1
end

bus_sizes = []
find_divisors(max_x).each do |x|
  next if x < min_bus_size
  j = 0
  bus_full = false
  sum = 0

  while j < groups.size do
    while sum < x && j < groups.size do
      sum += groups[j]
      j += 1
    end

    if j == groups.size && sum == x
      bus_full = true
      break
    elsif j < groups.size && sum == x
      sum = 0
    else
      break
    end
  end

  bus_sizes.push(x) if bus_full
end

puts bus_sizes.join(' ')
