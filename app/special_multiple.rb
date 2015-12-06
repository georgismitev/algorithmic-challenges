max = 20
array_combinations = Array.new(max) { [] }
array_combinations[0] = ['0', '9']
i = 1
while i < array_combinations.size do
  new_combinations = []
  ['0', '9'].each do |element|
    j = 0
    while j < array_combinations[i - 1].size do
      new_combinations.push(array_combinations[i - 1][j] + element)
      j += 1
    end
  end
  array_combinations[i] = new_combinations.sort
  i += 1
end

gets.to_i.times do
  n = gets.to_i
  found = false
  i = 1
  while i < array_combinations.size do
    array_combinations[i].each do |combination_number|
      number = combination_number.to_i
      if number > 0 && number % n == 0
        puts number
        found = true
        break
      end
    end
    break if found
    i += 1
  end
end
