def self.check_diary(spots)
  stack = []
  visited = {}
  milos_diary = true
  previous_spot = spots[0]

  i = 1
  while i < spots[0] do
    stack.push(i)
    visited[i] = 1
    i += 1
  end

  i = 1
  while i < spots.length && milos_diary do
    if spots[i] > previous_spot
      j = previous_spot + 1
      while j < spots[i] do
        unless visited[j]
          stack.push(j)
          visited[j] = 1
        end
        j += 1
      end
      previous_spot = spots[i]
    elsif
      if stack.last == spots[i]
        stack.pop
      else
        milos_diary = false
      end
    end
    i += 1
  end

  milos_diary
end

_ = gets.to_i
spots = gets.strip.split.map(&:to_i)

if check_diary(spots)
  puts 'YES'
else
  puts 'NO'
end
