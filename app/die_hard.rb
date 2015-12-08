require 'set'

def self.find_gallons(a, b)
  gallons = Set.new
  gallons.add(a)
  gallons.add(b)

  processed = Set.new
  less_than_b = [b]

  while true do
    processing = less_than_b.pop
    ta = a - b + processing
    processed.add(processing)

    while ta > 0 do
      gallons.add(ta)
      less_than_b.push(ta) if ta < b && !processed.include?(ta)
      ta -= b
    end

    break if less_than_b.empty?
  end

  gallons.to_a
end

gets.to_i.times do
  list = gets.strip.split(' ').map(&:to_i)
  a = list[0]
  b = list[1]
  c = list[2]
  a, b = b, a if a < b
  if find_gallons(a, b).include?(c)
    puts 'YES'
  else
    puts 'NO'
  end
end
