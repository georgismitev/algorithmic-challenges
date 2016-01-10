def partition(array, l, r)
  pivot_index = r
  pivot = array[pivot_index]
  r -= 1
  j = l

  while l <= r do
    if array[l] < pivot
      array[l], array[j] = array[j], array[l]
      j += 1
    end

    l += 1
  end

  array[pivot_index], array[j] = array[j], array[pivot_index]

  j
end

def quick_sort(array, l, r)
  return if array[l..r].length == 1 || l >= r
  pivot = partition(array, l, r)
  quick_sort(array, l, pivot - 1)
  quick_sort(array, pivot + 1, r)
end

n = gets.to_i
array = gets.strip.split.map(&:to_i)

quick_sort(array, 0, array.length - 1)

pairs = []
i = 0
min_diff = 10000007
while i < array.length - 1 do
  diff = array[i + 1] - array[i]
  if diff < min_diff
    min_diff = diff
    pairs = [array[i], array[i + 1]]
  elsif diff == min_diff
    pairs.push(array[i])
    pairs.push(array[i + 1])
  end
  i += 1
end

puts pairs.join(' ')
