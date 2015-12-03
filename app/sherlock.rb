mod = 1000000007

facts = Array.new(2500)
facts[0] = 1
facts[1] = 1
facts[2] = 2
i = 3
while i <= facts.size - 1 do
  facts[i] = facts[i - 1] * i
  i += 1
end

gets.to_i.times do
  list = gets.strip.split(' ').map(&:to_i)
  n = list[0] # zeroes
  m = list[1] # ones
  puts (facts[n + m - 1] / (facts[n] * facts[m - 1])) % 1000000007
end
