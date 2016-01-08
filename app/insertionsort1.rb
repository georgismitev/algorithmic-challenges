def insertion_sort(array)
  unsorted_element = array[array.length - 1]
  i = array.length - 2

  while unsorted_element < array[i] && i >= 0 do
    array[i + 1] = array[i]
    puts array.join(' ')
    i -= 1
  end

  array[i + 1] = unsorted_element
  puts array.join(' ')
end

count = gets.to_i
array = gets.strip.split.map(&:to_i)

insertion_sort(array)
