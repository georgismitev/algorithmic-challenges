package main

import "fmt"

func main() {
  var n int
  var k int
  var number int

  fmt.Scanf("%d", &n)
  fmt.Scanf("%d", &k)

  numbers_map := make(map[int]int)
  array := make([]int, n)
  pairs := 0

  for n > 0 {
    fmt.Scanf("%d", &number)
    array[len(array) - n] = number
    numbers_map[number] = 1
    n--
  }

  for i := 0; i < len(array); i++ {
    if numbers_map[array[i] + k] == 1 {
      pairs += 1
    }
  }

  fmt.Println(pairs)
}
