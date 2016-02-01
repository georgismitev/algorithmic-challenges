class MergeSort
  def self.merge_sort(array)
    return array if array.length == 1
    middle = array.length / 2 - 1
    left = merge_sort(array[0..middle])
    right = merge_sort(array[middle + 1..-1])
    merge(left, right)
  end

  def self.merge(left, right)
    array = Array.new(left.length + right.length)
    i = 0
    j = 0
    k = 0

    while i < left.length && j < right.length do
      if left[i] > right[j]
        array[k] = right[j]
        j += 1
      else
        array[k] = left[i]
        i += 1
      end

      k += 1
    end

    while i < left.length do
      array[k] = left[i]
      i += 1
      k += 1
    end

    while j < right.length do
      array[k] = right[j]
      j += 1
      k += 1
    end

    array
  end

  def self.sort(array)
    merge_sort(array)
  end
end
