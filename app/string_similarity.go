package main

import (
  "fmt"
)

func main() {
  var t int
  var sum int
  var s string
  fmt.Scan(&t)

  for i := 0; i < t; i++ {
    fmt.Scan(&s)
    size := len(s)
    z_array := make([]int, size)
    z_array[0] = size
    left, right := 0, 0

    for k := 1; k < size; k++ {
      if k > right {
        left, right = k, k
        for ; right < size && s[right] == s[right - left]; {
          right += 1
        }
        z_array[k] = right - left
        right -= 1
      } else {
        k1 := k - left
        if z_array[k1] < right - k + 1 {
          z_array[k] = z_array[k1]
        } else {
          left = k
          for ; right < size && s[right] == s[right - left]; {
            right += 1
          }
          z_array[k] = right - left
          right -= 1
        }
      }
    }
    
    sum = 0
    for j := 0; j < size; j++ {
      sum += z_array[j]
    }

    fmt.Println(sum)
  }
}
