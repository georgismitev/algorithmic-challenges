class SaveHumanity
  def self.bad_match_table(pattern, k = 1)
    match_table = Array.new(k + 1)
    m = pattern.length

    i = m
    while i >= m - k do
      match_row = { }
      j = 0
      while j < i - 1 do
        match_row[pattern[j]] = i - j - 1
        j += 1
      end
      match_row['*'] = i
      match_table[m - i] = match_row
      i -= 1
    end

    match_table
  end

  def self.find(text, pattern, k = 1)
    return (0..text.length - 1).to_a if pattern.length == 1

    result = []
    match_table = bad_match_table(pattern, k)

    i = pattern.length - 1
    while i < text.length do
      j = 0
      mismatch = 0

      while j < pattern.length do
        if text[i - j] != pattern[pattern.length - j - 1]
          mismatch += 1
          break if mismatch == 2
        end
        j += 1
      end

      result.push(i - pattern.length + 1) if j == pattern.length
      left = match_table[0][text[i]] || match_table[0]['*']
      right = match_table[1][text[i - 1]] || match_table[1]['*']
      i += [left, right].min
    end

    result
  end
end
