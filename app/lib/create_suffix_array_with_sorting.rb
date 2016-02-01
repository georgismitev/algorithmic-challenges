class CreateSuffixArrayWithSorting
  # speed up the sort, logn times
  def self.from(string)
    i = 0
    suffixes = []
    suffix_positions = { }
    char = 'A'.ord

    while i < string.size do
      suffix = string[i..-1]
      rank = [
        alphabet[string[i]] - char,
        i < string.size - 1 ? (alphabet[string[i + 1]] - char) : -1
      ]
      suffixes.push(SuffixArrayMember.new(suffix, i, rank))
      i += 1
    end

    sort(suffixes, string)
  end

  def self.sort(suffixes, string)
    sort_by_rank(suffixes)
    ind = Array.new(string.size)

    k = 2
    while k < 2 * string.size do
      rank = 0
      prev_rank = suffixes[0].rank[0]
      suffixes[0].rank[0] = rank
      ind[suffixes[0].index] = 0

      i = 1
      while i < string.size do
        if suffixes[i].rank[0] == prev_rank && suffixes[i].rank[1] == suffixes[i - 1].rank[1]
          prev_rank = suffixes[i].rank[0]
          suffixes[i].rank[0] = rank
        else
          prev_rank = suffixes[i].rank[0]
          rank += 1
          suffixes[i].rank[0] = rank
        end
        ind[suffixes[i].index] = i
        i += 1
      end

      i = 0
      while i < string.size do
        next_index = suffixes[i].index + k / 2
        suffixes[i].rank[1] = next_index < string.size ? suffixes[ind[next_index]].rank[0] : - 1
        i += 1
      end

      sort_by_rank(suffixes)

      k *= 2
    end

    suffixes.map(&:index)
  end

  def self.sort_by_rank(suffixes)
    suffixes.sort_by! { |a| a.rank }
  end

  def self.alphabet
    @alphabet ||= begin
      h = Hash[('A'..'Z').to_a.map { |e| [e, e.ord] }]
      h['|'] = 124 # special symbol for the end of the string
      h
    end
  end
end
