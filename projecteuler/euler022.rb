def self.letters
  @letters ||= Hash[('A'..'Z').to_a.map { |e| [e, e.ord - 64] }]
end

def self.name_value(name)
  value = 0
  name.each_char { |c| value += letters[c] }
  value
end

n = gets.to_i
names = Array.new(n)
n.times { |i| names[i] = gets.strip }

names.sort!

name_values = { }
i = 0
while i < names.length do
  name_values[names[i]] = (i + 1) * name_value(names[i])
  i += 1
end

gets.to_i.times { |i| puts name_values[gets.strip] }
