ad, am, ay = gets.strip.split(' ').map(&:to_i)
ed, em, ey = gets.strip.split(' ').map(&:to_i)

if am == em && ay == ey && ad > ed
  puts 15 * (ad - ed)
elsif ay == ey && am > em
  puts 500 * (am - em)
elsif ay > ey
  puts 10000
else # ay <= ey && (ad < ed || am < em)
  puts 0
end
