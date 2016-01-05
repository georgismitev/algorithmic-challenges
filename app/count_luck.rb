gets.to_i.times do
  start_position = nil
  end_position = nil
  visited = { }

  n, m = gets.strip.split(' ').map(&:to_i)
  array = Array.new(n)

  n.times do |i|
    array[i] = gets.strip.split('')

    unless start_position
      if m_position = array[i].index('M')
        start_position = [i, m_position]
      end
    end

    unless end_position
      if star_position = array[i].index('*')
        end_position = [i, star_position]
      end
    end
  end

  k = gets.to_i

  stack = [[*start_position, [start_position], 0]]

  while !stack.empty? do
    i, j, path, wand_waived_so_far = stack.pop

    visited[[i, j]] = 1

    if array[i][j] == '*'
      if wand_waived_so_far == k
        puts 'Impressed'
      else
        puts 'Oops!'
      end

      break
    end

    options = [[i, j + 1], [i, j - 1], [i + 1, j], [i - 1, j]].select do |l, r|
      l >= 0 && l < n && r >= 0 && r < m && array[l][r] != 'X' && !visited[[l, r]]
    end

    wand_waived = wand_waived_so_far + (options.length == 1 ? 0 : 1)

    options.each { |o| stack.push([*o, path.push(o), wand_waived]) }
  end
end
