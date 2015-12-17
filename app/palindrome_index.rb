def self.palindrome?(s)
  i = 0

  while i < s.size / 2 do
    return false if s[i] != s[s.size - i - 1]
    i += 1
  end

  true
end

def self.palindrome_index(s)
  i = 0
  index = -1
  found = false

  while i < s.size / 2 && !found do
    if s[i] != s[s.size - i - 1]
      if palindrome?(s[i..(s.size - i - 2)])
        index = s.size - i - 1
        found = true
      elsif palindrome?(s[(i+1)..(s.size - i - 1)])
        index = i
        found = true
      end
    end
    i += 1
  end

  index
end

gets.to_i.times do
  puts palindrome_index(gets.strip)
end
