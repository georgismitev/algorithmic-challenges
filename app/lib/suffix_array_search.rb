class SuffixArraySearch
  def self.create_suffix_array(string)
    suffixes = []
    string.length.times { |i| suffixes.push(string[i..-1]) }
    suffixes.sort
  end

  # Is $substring a substring of $string?
  # m is the length of substring
  # n is the length of the string
  # mlogn (once we have the suffix array)
  def self.substring?(substring, string)
    suffix_array = create_suffix_array(string)

    i, j = 0, suffix_array.length - 1
    while i <= j do
      m = (i + j) / 2
      # if suffix_array[m] == substring
      if suffix_array[m].start_with?(substring)
        return true
      elsif suffix_array[m] < substring
        i = m + 1
      else
        j = m - 1
      end
    end

    false
  end

  # How many times $substring occurs in $string?
  def self.number_of_occurrences(substring, string)
    suffix_array = create_suffix_array(string)
    occurrences = 0

    i, j = 0, suffix_array.length - 1
    while i <= j do
      m = (i + j) / 2
      if suffix_array[m].start_with?(substring)
        occurrences += 1
        i = m + 1
        while suffix_array[i].start_with?(substring) do
          occurrences += 1
          i += 1
        end
        i = m - 1
        while suffix_array[i].start_with?(substring)
          occurrences += 1
          i -= 1
        end
        return occurrences
      elsif suffix_array[m] < substring
        i = m + 1
      else
        j = m - 1
      end
    end

    occurrences
  end
end
