def self.z_function(string)
  length = string.length
  z_array = Array.new(length) { 0 }

  left, right, k = 0, 0, 1
  while k < length do
    if k > right
      left = right = k
      while right < length && string[right] == string[right - left] do
        right += 1
      end
      z_array[k] = right - left
      right -= 1
    else
      k1 = k - left
      if z_array[k1] < right - k + 1
        z_array[k] = z_array[k1]
      else
        left = k
        while right < length && string[right] == string[right - left] do
          right += 1
        end
        z_array[k] = right - left
        right -= 1 
      end
    end
    k += 1
  end

  z_array[0] = length
end

gets.to_i.times do
  s = gets.strip
  z_array = z_function(s)

  i = 0
  sum = 0
  while i < z_array.size do
    sum += z_array[i]
    i += 1
  end

  puts sum
end
