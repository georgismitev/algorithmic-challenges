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

n = gets.to_i
numbers = Array.new(n)
n.times { |i| numbers[i] = gets.strip }

carry = 0

i = 49
while i > 9 do
  j = 0
  sum = carry
  while j < n do
    sum += atoi[numbers[j][i]]
    j += 1
  end
  carry = sum / 10
  i -= 1
end

final_number = []

i = 9
while i >= 0 do
  j = 0
  sum = carry
  while j < n do
    sum += atoi[numbers[j][i]]
    j += 1
  end
  final_number.push(sum % 10)
  carry = sum / 10
  i -= 1
end

if carry > 0
  while carry > 9 do
    final_number.push(carry % 10)
    carry /= 10
  end

  final_number.push(carry)
end

puts final_number.join.reverse[0..9]
