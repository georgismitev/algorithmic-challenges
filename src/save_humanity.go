package main

import (
  "fmt"
)

type HumanitySaver struct {
  a, b string
}

func (h HumanitySaver) GenerateZArray(s string) []int {
  lengths := len(s)
  z_array := make([]int, lengths)
  left, right := 0, 0

  for k := 1; k < lengths; k++ {
    if k > right {
      left, right = k, k
      for ; right < lengths && s[right] == s[right - left]; {
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
        for ; right < lengths && s[right] == s[right - left]; {
          right += 1
        }
        z_array[k] = right - left
        right -= 1
      }
    }
  }

  return z_array
}

func (h HumanitySaver) FindMatches() []int {
  matches := make([]int, 0, 0)

  s := h.b + "$" + h.a
  lengthb := len(h.b)
  z_array := h.GenerateZArray(s)

  for k := lengthb + 1; k < len(z_array); k++ {
    if z_array[k] == lengthb {
      matches = append(matches, k - lengthb - 1)
    }
  }

  return matches
}

func main() {
  var t int
  var a string
  var b string

  fmt.Scan(&t)
  for k := 0; k < t; k++ {
    fmt.Scan(&a)
    fmt.Scan(&b)
    matches := HumanitySaver{a, b}.FindMatches()
    if len(matches) > 0 {
      i := 0
      for ; i < len(matches) - 1; i++ {
        fmt.Print(matches[i], " ")
      }
      fmt.Print(matches[i])
      fmt.Println()
    } else {
      fmt.Println("No Match!")
    } 
  }
}
