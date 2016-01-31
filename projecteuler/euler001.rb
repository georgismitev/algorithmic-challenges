gets.to_i.times do
  n = gets.to_i

  l = (n % 3 == 0 ? n - 1 : n) / 3
  sum_of_3 = (3 * (l + 1) * l) / 2

  r = (n % 5 == 0 ? n - 1 : n) / 5
  sum_of_5 = (5 * (r + 1) * r) / 2

  k = (n % 15 == 0 ? n - 1 : n) / 15
  sum_of_15 = (15 * (k + 1) * k) / 2

  puts sum_of_3 + sum_of_5 - sum_of_15
end
