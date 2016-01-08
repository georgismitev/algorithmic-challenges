def insertionSort(ar)
  i = 1
  while (i < ar.length)
    if (i > 0 && ar[i] < ar[i - 1])
      value = ar[i]
      j = i-1
      while (j >= 0 && value < ar[j])
        ar[j+1] = ar[j]
        j -= 1
      end
      ar[j+1] = value
    end
    i += 1
  end
  puts ar.join(" ")
end

cnt = gets.to_i;
array = gets.chomp.split.map(&:to_i)
insertionSort(ar)
