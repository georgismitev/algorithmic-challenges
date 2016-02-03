atoi = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9
}

gets.to_i.times do
  n, k = gets.strip.split.map(&:to_i)
  number = gets.strip

  greatest = -1
  i = 0
  while i < n - k do
    j = 0
    product = 1
    while j < k do
      product *= atoi[number[i + j]]
      j += 1
    end
    greatest = [greatest, product].max
    i += 1
  end

  puts greatest
end
