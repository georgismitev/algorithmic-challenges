require 'set'

gets.to_i.times do
  m = gets.to_i
  n = gets.to_i
  prices = gets.strip.split(' ').map(&:to_i)
  numbers = Hash.new { |hash, key| hash[key] = [] }
  i = 0
  while i < n do
    numbers[prices[i]].push(i)
    i += 1
  end

  set = Set.new
  numbers.each_pair do |price, indices|
    if numbers.key?(m - price)
      indices.each do |l|
        numbers[m - price].each do |r|
          next if l == r
          set.add([l + 1, r + 1].sort)
        end
      end
    end
  end

  set.each { |indices| puts indices.join(' ') }
end
