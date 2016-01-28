package main

import (
  "fmt"
)

func max(a, b int) int {
  if a > b {
    return a
  }

  return b
}

func main() {
  var a string
  var b string

  fmt.Scan(&a)
  fmt.Scan(&b)

  dp := make([][]int, len(a))
  for i := range dp {
      dp[i] = make([]int, len(b))
  }

  for i := 0; i < len(a); i++ {
    if a[i] == b[0] {
      dp[i][0] = 1
    } else {
      dp[i][0] = 0
    }
  }

  for j := 0; j < len(b); j++ {
    if a[0] == b[j] {
      dp[0][j] = 1
    } else {
      dp[0][j] = 0
    }
  }

  for j := 1; j < len(b); j++ {
    for i := 1; i < len(a); i++ {
      if a[i] == b[j] {
        dp[i][j] = 1 + dp[i - 1][j - 1]
      } else {
        dp[i][j] = max(dp[i][j - 1], dp[i - 1][j])
      }
    }
  }

  fmt.Println(dp[len(a) - 1][len(b) - 1])
}
