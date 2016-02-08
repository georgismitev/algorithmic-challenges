MAX = 5_000_001

colatz_numbers = Array.new(MAX)
colatz_numbers[0] = 1
colatz_numbers[1] = 1
queue = Array.new(500)

i = 0
while i < MAX do
  unless colatz_numbers[i]
    queue_index = 0
    terms = 1

    j = i
    while j >= 1 do
      j % 2 == 1 ? j = 3 * j + 1 : (j >>= 1)
      break if colatz_numbers[j]
      queue[queue_index] = j
      terms += 1
      queue_index += 1
    end

    terms += colatz_numbers[j] if colatz_numbers[j]
    colatz_numbers[i] = terms

    j = 0
    while j < queue_index do
      terms -= 1
      colatz_numbers[queue[j]] = terms if queue[j] < MAX
      j += 1
    end
  end

  i += 1
end

colatz_results = Array.new(MAX)
colatz_results[1] = 1
max_chain = -1
max_colatz = -1

i = 2
while i < MAX do
  if colatz_numbers[i] >= max_chain
    max_chain = colatz_numbers[i]
    max_colatz = i
  end
  colatz_results[i] = max_colatz
  i += 1
end

gets.to_i.times { puts colatz_results[gets.to_i] }
