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
  var number int

  n := readInt()
  k := readInt()

  numbers_map := make(map[int]int)
  array := make([]int, n)
  pairs := 0

  for n > 0 {
    number = readInt()
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
