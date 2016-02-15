def self.fix_the_cycles(a, b, c, d, e, f)
  acda =  e + d + a
  abcda = b + c + d + a
  abda =  b + f + a
  min = [acda, abcda, abda].select { |e| e < 0 }.min
  min.nil? ? 0 : min && min * -1 || -1
end

a, b, c, d, e, f = gets.strip.split.map(&:to_i)

puts fix_the_cycles(a, b, c, d, e, f)
