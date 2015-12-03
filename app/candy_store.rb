facts = Array.new(2500)
facts[0] = 1
facts[1] = 1
facts[2] = 2
i = 3
while i <= facts.size - 1 do
  facts[i] = facts[i - 1] * i
  i += 1
end

def self.candy(n, k, facts)
  s = (facts[n + k - 1] / (facts[k] * facts[n - 1]))
  s.to_s.size > 9 ? s.to_s[-9..-1].to_i : s
end

gets.strip.to_i.times do
  n = gets.to_i
  k = gets.to_i
  puts candy(n, k, facts)
end
