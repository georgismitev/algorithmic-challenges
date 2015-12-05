def self.generate_permutations(permutations, current_permutation, string, used, last_index)
  permutations.push(current_permutation.join) if current_permutation.size > 0

  last_index.upto(string.size - 1) do |i|
    if used[i] == 0
      current_permutation.push(string[i])
      used[i] = 1
      last_index += 1
      generate_permutations(permutations, current_permutation, string, used, last_index)
      # last_index -= 1
      used[i] = 0
      current_permutation.pop
    end
  end

  permutations
end

gets.to_i.times do
  length = gets.to_i
  string = gets.strip
  permutations = []
  used = Array.new(string.size) { 0 }
  puts generate_permutations(permutations, [], string, used, 0).to_a.join("\n")
end
