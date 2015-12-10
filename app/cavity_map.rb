#!/bin/ruby

n = gets.strip.to_i
grid = Array.new(n)
for grid_i in (0..n-1)
  grid[grid_i] = gets.strip
end

i = 1
puts grid[i - 1]
while i < n - 1 do
  j = 1
  row = grid[i][j - 1]
  while j < n - 1 do
    cells = [grid[i-1][j], grid[i][j], grid[i + 1][j], grid[i][j - 1], grid[i][j + 1]].sort
    if grid[i][j] == cells.last && cells[3] < cells[4]
      row += 'X'
    else
      row += grid[i][j]
    end
    j += 1
  end
  row += grid[i][j]
  puts row
  i += 1
end
puts grid[i]
