s = gets.strip
size = s.size
length = Math.sqrt(size).floor
words = Math.sqrt(size).ceil
length += 1 if length * words < size && length < words

output = []
k = 0
while k < words do
  j = k
  word = ''
  length.times do |i|
    word += s[k + i * words] || ''
  end
  output.push(word)
  k += 1
  output.push(' ') if k < words
end

puts output.join
