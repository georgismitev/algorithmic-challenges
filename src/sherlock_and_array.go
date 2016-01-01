package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)

var scanner *bufio.Scanner

func init() {
  scanner = bufio.NewScanner(os.Stdin)
  scanner.Split(bufio.ScanWords)
}

func atoi(b []byte) (int, error) {
  neg := false
  if b[0] == '+' {
    b = b[1:]
  } else if b[0] == '-' {
    neg = true
    b = b[1:]
  }
  n := 0
  for _, v := range b {
    if v < '0' || v > '9' {
      return 0, strconv.ErrSyntax
    }
    n = n*10 + int(v-'0')
  }
  if neg {
    return -n, nil
  }
  return n, nil
}

func readInt() int {
  if scanner.Scan() {
    i, err := strconv.Atoi(scanner.Text())
    if err != nil {
      fmt.Println("Error converting int")
      os.Exit(1)
      return 0
    } else {
      return i  
    }
  } else {
    fmt.Println("Error scanning int")
    os.Exit(1)
    return 0
  }
}

func main() {
  var t int
  var n int

  t = readInt()

  for i := 0; i < t; i++ {
    var number int
    n = readInt()
    numbers := n
    array := make([]int, n)
    total_sum := 0

    for numbers > 0 {
      number = readInt()
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
