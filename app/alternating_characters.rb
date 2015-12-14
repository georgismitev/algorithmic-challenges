gets.to_i.times do
  s = gets.strip
  chars_to_delete = 0
  i = 1
  while i < s.size do
    j = s[i - 1]
    k = i
    repeating_characters = false
    while s[k] == j do
      k += 1
      i += 1
      chars_to_delete += 1
      repeating_characters = true
    end
    i += 1 if repeating_characters == false
  end
  puts chars_to_delete
end
