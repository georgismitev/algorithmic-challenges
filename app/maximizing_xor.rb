def maxXor(l, r)
  max = 0

  l.upto(r) do |i|
    i.upto(r) do |j|
      max = [i ^ j, max].max
    end
  end

  max
end

l = gets.to_i
r = gets.to_i
print maxXor(l, r)
