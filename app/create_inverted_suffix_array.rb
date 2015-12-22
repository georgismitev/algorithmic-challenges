class CreateInvertedSuffixArray
  def self.from(string)
    invert(CreateSuffixArray.with_sorting(string))
  end

  def self.invert(suffix_array)
    inverted = Array.new(suffix_array.size)

    i = 0
    while i < suffix_array.size do
      inverted[suffix_array[i]] = i
      i += 1
    end

    inverted
  end
end
