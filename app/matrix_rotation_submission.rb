m, n, r = gets.strip.split(' ').map(&:to_i)
matrix = Array.new(m) { Array.new(n) } 
m.times { |i| matrix[i] = gets.strip.split(' ').map(&:to_i) }

output = Array.new(m) { Array.new(n) } 
min = [m, n].min
max = [m, n].max
to = min / 2
i = 0
while i < to do
  level = []
  level_items = 2 * (min - 2 * i) + 2 * (max - 2 * i - 2)
  i.upto(m - i - 1) { |j| level.push(matrix[j][i]) }
  (i + 1).upto(n - i - 2) { |j| level.push(matrix[m - i - 1][j]) }
  (m - i - 1).downto(i) { |j| level.push(matrix[j][n - i - 1]) }
  (n - i - 2).downto(i + 1) { |j| level.push(matrix[i][j]) }
  level *= 2
  k = level_items - (r % level_items)
  i.upto(m - i - 1) { |j| output[j][i] = level[k]; k += 1 }
  (i + 1).upto(n - i - 2) { |j| output[m - i - 1][j] = level[k]; k += 1 }
  (m - i - 1).downto(i) { |j| output[j][n - i - 1] = level[k]; k += 1 }
  (n - i - 2).downto(i + 1) { |j| output[i][j] = level[k]; k += 1 }
  i += 1
end

output.each { |o| puts o.join(' ') + "\n" }
