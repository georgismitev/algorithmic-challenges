mod = 10 ** 9

ncr = []
ncr[0] = [1]
ncr[1] = [1, 1]
ncr[2] = [1, 2, 1]

i = 3
while i <= 1000 do
  ncr_i = Array.new(i + 1)
  ncr_i[0] = 1
  ncr_i[i] = 1
  j = 1
  while j < i do
    ncr_i[j] = (ncr[i - 1][j - 1] + ncr[i - 1][j]) % mod
    j += 1
  end
  ncr[i] = ncr_i
  i += 1
end

gets.to_i.times do
  puts ncr[gets.to_i].join(' ')
end
