class QuickSort
  def self.partition(array, l, r)
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

  def self.quick_sort(array, l = 0, r = array.length - 1)
    return if array[l..r].length == 1 || l >= r
    pivot = partition(array, l, r)
    quick_sort(array, l, pivot - 1)
    quick_sort(array, pivot + 1, r)

  end

  def self.sort(array)
    quick_sort(array)
    array
  end
end
