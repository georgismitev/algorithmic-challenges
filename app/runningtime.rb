def insertion_sort(array)
  shifts = 0
  i = 1
  while i < array.length do
    if array[i] < array[i - 1]
      smaller_element = array[i]
      j = i - 1
      while smaller_element < array[j] && j >= 0 do
        array[j], array[j + 1] = array[j + 1], array[j]
        shifts += 1
        j -= 1
      end
    end
    i += 1
  end
  shifts
end

count = gets.to_i
array = gets.strip.split.map(&:to_i)

puts insertion_sort(array)
