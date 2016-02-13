STRING = 'abcdefghijklm'

def self.factsupto(n)
  facts = Array.new(n + 1)
  facts[1] = 1
  i = 2
  while i <= n do
    facts[i] = facts[i - 1] * i
    i += 1
  end
  facts
end

def self.lpermutation(string, nth, facts)
  size = string.size
  permutation = Array.new(string.size)
  nth -= 1
  j = 1

  while j < size do
    i = nth / facts[size - j]
    permutation[j] = string[i]
    string[i] = ''
    nth %= facts[size - j]
    j += 1
  end

  permutation[j] = string

  permutation.join
end

facts = factsupto(STRING.size)
gets.to_i.times { puts lpermutation(STRING.dup, gets.to_i, facts) }
