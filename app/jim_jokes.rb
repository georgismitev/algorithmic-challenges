require 'set'

n = gets.to_i
events = Hash.new { |hash, key| hash[key] = [] }
number_of_jokes = 0

def self.base_systems
  @base_systems ||= {
    2 => [0, 1],
    3 => [0, 1, 2],
    4 => [0, 1, 2, 3],
    5 => [0, 1, 2, 3, 4],
    6 => [0, 1, 2, 3, 4, 5],
    7 => [0, 1, 2, 3, 4, 5, 6],
    8 => [0, 1, 2, 3, 4, 5, 6, 7],
    9 => [0, 1, 2, 3, 4, 5, 6, 7, 8],
    10 => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    11 => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9],
    12 => [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
  }
end

def self.numbers(m)
  arr = []

  while m > 0 do
    arr.push(m % 10)
    m /= 10
  end

  arr
end

def self.valid?(dn, m)
  return false if m == [1] || m == [0]
  (base_systems[m] & dn) == dn.uniq.sort
end

def self.convert(mn, dn)
  days = 0
  i = dn.size - 1

  while i >= 0 do
    days += dn[i] * (mn ** i)
    i -= 1
  end

  days
end

def self.combination(n)
  (n * (n - 1)) / 2
end

# m base
# d number

n.times do |i|
  m, d = gets.strip.split(' ').map(&:to_i)
  mn = numbers(m)
  dn = numbers(d)
  if valid?(dn, m)
    days = convert(m, dn)
    events[days].push([m, d])
  end
end

events.each_pair do |k, v|
  number_of_jokes += combination(v.size)
end

puts number_of_jokes
