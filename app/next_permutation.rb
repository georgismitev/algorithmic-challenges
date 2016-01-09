class NextPermutation
  def self.of(s)
    i = 0
    k = -1
    while i < s.length - 1 do
      k = i if s[i] < s[i + 1]
      i += 1
    end

    return k if k == -1

    i = k + 1
    l = -1
    while i < s.length && s[i] > s[k] do
      l = i
      i += 1
    end

    s[k], s[l] = s[l], s[k]

    j = 0
    while j < (s.length - k) / 2 do
      s[k + j + 1], s[s.length - j - 1] = s[s.length - j - 1], s[k + j + 1]
      j += 1
    end

    s
  end
end
