n = gets.to_i
strings = Hash.new { |hash, key| hash[key] = 0 }
n.times { strings[gets.strip] += 1 }
gets.to_i.times { puts strings[gets.strip].to_i }
