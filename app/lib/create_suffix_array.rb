class CreateSuffixArray
  def self.default(string)
    i = 0
    suffixes = []
    suffix_positions = { }

    while i < string.size do
      suffixes.push(string[i..-1])
      suffix_positions[string[i..-1]] = i
      i += 1
    end

    suffixes.sort.map { |suffix| suffix_positions[suffix] }
  end

  # speed up the sort, logn times
  def self.with_sorting(string)
    CreateSuffixArrayWithSorting.from(string)
  end

  # linear with suffix tree
  def self.with_tree(string)
    CreateSuffixArrayWithTree.new(string).create
  end
end
