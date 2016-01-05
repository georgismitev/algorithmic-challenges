m = gets.to_i
n = gets.to_i
array = Array.new(m)
m.times { |i| array[i] = gets.strip.split(' ').map(&:to_i) }

area = 2
max_area = -1
areas = Hash.new { |hash, key| hash[key] = 0 }
visited = { }

0.upto(m - 1) do |i|
  0.upto(n - 1) do |j|
    next if visited[[i, j]]
    
    if array[i][j] == 1
      stack = [[i, j]]

      while !stack.empty? do
        l, r = stack.pop
        next if l < 0 || l >= m || r < 0 || r >= n || array[l][r] == 0 || visited[[l, r]]
        visited[[l, r]] = 1
        areas[area] += 1
        stack.push([l - 1, r - 1]) unless visited[[l - 1, r - 1]]
        stack.push([l + 1, r + 1]) unless visited[[l + 1, r + 1]]
        stack.push([l + 1, r - 1]) unless visited[[l + 1, r - 1]]
        stack.push([l - 1, r + 1]) unless visited[[l - 1, r + 1]]
        stack.push([l, r + 1]) unless visited[[l, r + 1]]
        stack.push([l, r - 1]) unless visited[[l, r - 1]]
        stack.push([l + 1, r]) unless visited[[l + 1, r]]
        stack.push([l - 1, r]) unless visited[[l - 1, r]]
      end

      if max_area < 0
        max_area = area
      elsif areas[area] > areas[max_area]
        max_area = area 
      end

      area += 1
    end
  end
end

puts areas[max_area]
