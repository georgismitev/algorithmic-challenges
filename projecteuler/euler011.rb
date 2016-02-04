grid = Array.new(20)
20.times { |i| grid[i] = gets.strip.split.map(&:to_i) }

max = -1

2.upto(18) do |i|
  2.upto(18) do |j|
    -2.upto(1) do |i1|
      hproduct, vproduct = 1, 1
      -2.upto(1) { |j1| hproduct *= grid[i + i1][j + j1] }
      -2.upto(1) { |j1| vproduct *= grid[j + j1][i + i1] }
      max = [hproduct, vproduct, max].max
    end
    rd = grid[i - 2][j - 2] * grid[i - 1][j - 1] * grid[i][j] * grid[i + 1][j + 1]
    ld = grid[i - 2][j + 1] * grid[i - 1][j] * grid[i][j - 1] * grid[i + 1][j - 2]
    max = [max, rd, ld].max
    j += 1
  end
  i += 1
end

puts max
