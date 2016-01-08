def partition(array, l = 0, r = array.length - 1)
  pivot_index = l
  pivot = array[pivot_index]
  l += 1

  while l <= r do
    if array[l] < pivot
      j = l - 1
      while j >= pivot_index do
        array[j], array[j + 1] = array[j + 1], array[j]
        j -= 1
      end
      pivot_index += 1
    end
    l += 1
  end

  pivot_index
end

def quick_sort(array, l, r)
  if array[l..r].length == 1 || l >= r
    nil
  else
    pivot = partition(array, l, r)
    result = quick_sort(array, l, pivot - 1)
    puts array[l..pivot-1].join(' ') if result
    result = quick_sort(array, pivot + 1, r)
    puts array[pivot + 1..r].join(' ') if result
    array[l..r]
  end
end

gets.to_i
array = gets.chomp.split.map(&:to_i)

puts quick_sort(array, 0, array.length - 1).join(' ')
