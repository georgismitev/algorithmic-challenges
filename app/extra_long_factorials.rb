n = gets.strip.to_i

facts = Array.new(n + 1)
facts[0] = 1
facts[1] = 1

i = 2
while i <= n do
  facts[i] = facts[i - 1] * i
  i += 1
end

puts facts[i - 1]
