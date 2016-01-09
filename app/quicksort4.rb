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

def partition(array, l = 0, r = array.length - 1)
  shifts = 0
  pivot_index = r
  pivot = array[pivot_index]
  r -= 1
  j = l

  while l <= r do
    if array[l] < pivot
      array[j], array[l] = array[l], array[j]
      shifts += 1
      j += 1
    end

    l += 1
  end

  array[j], array[l] = array[l], array[j]
  shifts += 1

  return j, shifts
end

def quick_sort(array, l, r)
  return 0 if array[l..r].length == 1 || l >= r
  shifts = 0
  pivot, new_shifts = partition(array, l, r)
  shifts += new_shifts
  shifts += quick_sort(array, l, pivot - 1)
  shifts += quick_sort(array, pivot + 1, r)
  shifts
end

count = gets.to_i
iarray = gets.strip.split.map(&:to_i)
qarray = iarray.clone
puts insertion_sort(iarray) - quick_sort(qarray, 0, qarray.length - 1)
