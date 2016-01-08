def partition(array)
  partition_element = array[0]
  q = 0
  l = 1
  r = array.length - 1
  while l < r do
    while array[r] > partition_element && l < r do
      r -= 1
    end
    while array[l] < partition_element && l < r do
      l += 1
    end
    array[l], array[r] = array[r], array[l] if array[l] > array[r]
  end

  array[0], array[l] = array[l], array[0] if array[l] < array[0]
  puts array.join(' ')
end

gets.to_i
array = gets.chomp.split.map(&:to_i)
partition(array)
