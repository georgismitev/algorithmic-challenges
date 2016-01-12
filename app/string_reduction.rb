def self.replacements
  @replacements ||= {
    'ab' => 'c',
    'ba' => 'c',
    'ac' => 'b',
    'ca' => 'b',
    'bc' => 'a',
    'cb' => 'a'
  }
end

def self.adjacent_replacement(key)
  replacements[key] || ''
end

def self.string_reduction(string, results_hash = {})
  return 1 if string.length == 1
  return results_hash[string] if results_hash[string]

  string_map = Hash.new { |hash, key| hash[key] = 0 }

  i = 0
  while i < string.length do
    string_map[string[i]] += 1
    i += 1
  end

  if string_map.keys.length > 1
    l = adjacent_replacement(string[0..1]) + string[2..-1]
    r = string[0..-3] + adjacent_replacement(string[-2..-1])
    results_hash[l] = string_reduction(l, results_hash)
    results_hash[r] = string_reduction(r, results_hash)

    [
      results_hash[l],
      results_hash[r]
    ].min
  else
    results_hash[string] = string.length
    string.length
  end
end

gets.to_i.times { puts string_reduction(gets.strip) }
