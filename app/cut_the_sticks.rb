def self.cut_the_sticks(array)
  cuts = []
  n = array.size
  i = 0

  array = array.sort

  while i < n do
    while array[i] == 0 do
      i += 1
    end
    min = array[i]
    j = i
    break if j == n
    cuts.push(n - j)
    while j < n do
      array[j] = array[j] - min >= 0 ? array[j] - min : 0
      j += 1
    end
  end

  cuts
end

gets.to_i
puts cut_the_sticks(gets.strip.split(' ').map(&:to_i)).join("\n")
