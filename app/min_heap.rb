class MinHeap
  attr_accessor :array

  def initialize
    @array = []
  end

  # childrens of i: 2 * i + 1 and 2 * i + 2 
  # parent of i: (i - 1) / 2 ( (i - 1) >> 1 )

  def insert(value)
    array.push(value)
    i = array.length - 1
    parent = (i - 1) >> 1
    while i >= 0 && parent >= 0 && array[i] < array[parent] do
      array[i], array[parent] = array[parent], array[i]
      i = parent
      parent = (i - 1) >> 1
    end
  end

  def min
    self.array[0]
  end

  def extract
    last = array.length - 1
    array[0], array[last] = array[last], array[0]
    top = array.pop
    size = array.length

    i = 0
    while true do
      l = 2 * i + 1
      r = 2 * i + 2
      
      break if l >= size && r >= size

      if array[l] && !array[r]
        break if array[i] < array[l]
        array[l], array[i] = array[i], array[l]
        i = l
      elsif array[r] && !array[l]
        break if array[i] < array[r]
        array[r], array[i] = array[i], array[r]
        i = r
      elsif array[l] < array[r]
        break if array[i] < array[l]
        array[l], array[i] = array[i], array[l]
        i = l
      else
        break if array[i] < array[r]
        array[r], array[i] = array[i], array[r]
        i = r
      end
    end

    top
  end
end
