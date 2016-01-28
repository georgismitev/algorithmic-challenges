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
    i, err := atoi(scanner.Bytes())
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

func max(a, b int) int {
  if a > b {
    return a
  }

  return b
}

func main() {
  var n int
  var m int

  t := readInt()

  for k := 0; k < t; k++ {
    n = readInt()
    m = readInt()
    array := make([]int, n)
    prefixArray := make([]int, n)

    for j := 0; j < n; j++ {
      array[j] = readInt()
    }

    current := 0
    for i := 0; i < n; i++ {
      current = (array[i] % m + current) % m
      prefixArray[i] = current
    }

    maxValue := 0

    for i := 0; i < n; i++ {
      for j := i - 1; j >= 0 && prefixArray[j] > prefixArray[i]; j-- {
        maxValue = max(maxValue, (prefixArray[i] - prefixArray[j] + m) % m)
      }
      maxValue = max(maxValue, prefixArray[i])
    }

    fmt.Println(maxValue)
  }
}
