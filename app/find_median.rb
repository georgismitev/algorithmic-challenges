def partition(array, l, r)
  pivot = array[r]
  r -= 1
  j = l

  while l <= r do
    if array[l] < pivot
      array[l], array[j] = array[j], array[l]
      j += 1
    end

    l += 1
  end

  array[j], array[r + 1] = array[r + 1], array[j]

  j
end

n = gets.to_i
array = gets.strip.split.map(&:to_i)

l = 0
r = array.length - 1
pivot = -1
middle = array.length / 2

while true do
  pivot = partition(array, l, r)
  if pivot == middle
    puts array[pivot]
    break
  elsif pivot < middle
    l = pivot + 1
  else
    r = pivot - 1
  end
end
