def self.find_max_tuple(n)
  max_tuple = []
  i = 0

  while i <= n do
    if i % 5 == 0 && (n - i) % 3 == 0
      if max_tuple == []
        max_tuple = [i, n - i]
      elsif max_tuple != [] && (n - i) > max_tuple[1]
        max_tuple = [i, n - i]
      end
    end
    i += 5
  end

  max_tuple
end

gets.to_i.times do
  tuple = find_max_tuple(gets.to_i)
  if tuple != []
    puts ('5' * tuple[1] + '3' * tuple[0]).to_i
  else
    puts -1
  end
end
