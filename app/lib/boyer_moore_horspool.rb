class BoyerMooreHorspool
  def self.bad_match_table(pattern)
    size = pattern.length
    table = Hash.new { |h, k| h[k] = size }

    i = 0
    while i < size - 1 do
      table[pattern[i]] = size - i - 1
      i += 1
    end

    table
  end

  def self.find(pattern, text)
    matches = []
    match_table = bad_match_table(pattern)

    i = pattern.length - 1
    while i < text.length do
      j = 0

      while j < pattern.length do
        break if text[i - j] != pattern[pattern.length - j - 1]
        j += 1
      end

      if j == pattern.length
        matches.push(i - pattern.length + 1)
        i += pattern.length - 1
      else
        i += match_table[text[i]]
      end
    end

    matches
  end
end
