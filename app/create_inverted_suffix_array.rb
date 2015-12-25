class CreateInvertedSuffixArray
  def self.from(string)
    # invert(CreateSuffixArray.with_sorting(string))
    invert(CreateSuffixArray.with_tree(string))
  end

  def self.invert(suffix_array)
    inverted = Array.new(suffix_array.size - 1)

    i = 1
    while i < suffix_array.size do
      inverted[suffix_array[i]] = i
      i += 1
    end

    inverted
  end
end
