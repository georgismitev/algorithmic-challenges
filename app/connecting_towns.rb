mod = 1234567

gets.to_i.times do
  n = gets.to_i # number of towns
  routes = gets.strip.split(' ').map(&:to_i) # number of routes Ni from Ti to Ti+1
  puts routes.reduce(&:*) % mod
end
