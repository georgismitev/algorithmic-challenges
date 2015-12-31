package main

import "fmt"

func main() {
  var t int
  var n int

  fmt.Scanf("%d", &t)

  for i := 0; i < t; i++ {
    var number int
    fmt.Scanf("%d", &n)
    numbers := n
    array := make([]int, n)
    total_sum := 0

    for numbers > 0 {
      fmt.Scanf("%d", &number)
      array[n - numbers] = number
      total_sum += number
      numbers--
    }

    left_sum := 0
    right_sum := total_sum - array[0]
    found := false
    
    for i := 0; i < n; i++ {
      if left_sum == right_sum {
        found = true
        break
      } else {
        left_sum += array[i]
        if i < n - 1 {
          right_sum -= array[i + 1] 
        }
      }
    }

    if found == true {
      fmt.Println("YES")
    } else {
      fmt.Println("NO")
    }
  }
}
