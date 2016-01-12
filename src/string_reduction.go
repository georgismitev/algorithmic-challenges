package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)

var scanner *bufio.Scanner
var reader *bufio.Reader

var replacements = map[string]string {
  "ab": "c",
  "ba": "c",
  "ac": "b",
  "ca": "b",
  "bc": "a",
  "cb": "a",
}

var results = map[string]int{}

func init() {
  scanner = bufio.NewScanner(os.Stdin)
  scanner.Split(bufio.ScanWords)

  reader = bufio.NewReader(os.Stdin)
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

func min(a int, b int) int {
  if a < b {
    return a
  }

  return b
}

func findStringReductions(s string) int {
  if len(s) <= 1 {
    return len(s)
  }

  if results[s] != 0 {
    return results[s]
  }

  char := s[0]
  i := 1

  for ; i < len(s); i++ {
    if s[i] != char {
      break
    }
  }

  if i < len(s) {
    leftStart := ""
    leftEnd := ""

    leftStart = s[0:2]

    if len(s) > 2 {
      leftEnd = s[2:len(s)]
    }

    rightStart := s[0: len(s) - 2]
    rightEnd := s[len(s) - 2: len(s)]

    l := replacements[leftStart] + leftEnd
    r := rightStart + replacements[rightEnd]

    results[l] = findStringReductions(l)
    results[r] = findStringReductions(r)

    return min(results[l], results[r])
  } else {
    results[s] = len(s)
    return len(s)
  }
}

func main() {
  var t int
  t = readInt()

  for i := 0; i < t; i++ {
    scanner.Scan()
    fmt.Println(findStringReductions(scanner.Text()))
  }
}
