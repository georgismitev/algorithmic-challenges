def partition(array, l = 0, r = array.length - 1)
  pivot_index = r
  pivot = array[pivot_index]
  r -= 1
  j = l

  while l <= r do
    if array[l] < pivot
      array[j], array[l] = array[l], array[j]
      j += 1
    end

    l += 1
  end

  array[j], array[l] = array[l], array[j]
  puts array.join(' ')
  j
end

def quick_sort(array, l, r)
  return if array[l..r].length == 1 || l >= r
  pivot = partition(array, l, r)
  quick_sort(array, l, pivot - 1)
  quick_sort(array, pivot + 1, r)
end

gets.to_i
array = gets.chomp.split.map(&:to_i)
quick_sort(array, 0, array.length - 1)
