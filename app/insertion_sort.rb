def self.merge_sort(array)
  return array, 0 if array.length == 1
  middle = array.length / 2 - 1
  left, inversions_left = merge_sort(array[0..middle])
  right, inversions_right = merge_sort(array[(middle + 1)..-1])
  inversions = inversions_left + inversions_right
  sorted_array, sorted_inversions = merge(left, right)
  inversions += sorted_inversions
  return sorted_array, inversions
end

def self.merge(left, right)
  result = Array.new(left.length + right.length)
  i = 0 # left
  j = 0 # right
  k = 0 # result
  inversions = 0

  while i < left.length && j < right.length do
    if left[i] > right[j]
      result[k] = right[j]
      j += 1
      inversions += left.length - i
    else
      result[k] = left[i]
      i += 1
    end

    k += 1
  end

  while i < left.length do
    result[k] = left[i]
    i += 1
    k += 1
  end

  while j < right.length do
    result[k] = right[j]
    j += 1
    k += 1
  end

  return result, inversions
end

gets.to_i.times do
  n = gets.to_i
  array = gets.strip.split.map(&:to_i)
  puts merge_sort(array)[1]
end
