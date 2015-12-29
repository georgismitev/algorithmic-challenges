package main

import (
  "testing"
)

type TableTest struct {
  input  []string
  expected []int
}

var tableTests = []TableTest{
  { []string{"aabaa", "aaaab"}, []int{} },
  { []string{"bbabbaaaabababbaaba", "aaababbaaaaaa"}, []int{} },
  { []string{"babbbabaa", "bbaba"}, []int{3} },
  { []string{"baaaaababbaa", "abbab"}, []int{4, 7} },
  { []string{"ababbaabbbabaababaaaabaa", "aaabaababbbabbabbaababbb"}, []int{} },
  { []string{"aaaabaaaaabbaaaa", "aa"}, []int{0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14} },
  { []string{"abababaaaaabaaaaba", "ababba"}, []int{2} },
  { []string{"aabbbababaabaaa", "baabababbaaaaa"}, []int{} },
  { []string{"bababa", "a"}, []int{0, 1, 2, 3, 4, 5} },
  { []string{"bbbbabaaababaabbaab", "baaaaab"}, []int{3, 5} },
  { []string{"abbab", "ba"}, []int{1, 2} },
  { []string{"hello", "world"}, []int{} },
  { []string{"banana", "nan"}, []int{0, 2} },
}

func PrintError(t *testing.T, value *TableTest, actual []int) {
  t.Errorf("---------------------------------------------")
  t.Errorf("a:\t\t%v", value.input[0])
  t.Errorf("b:\t\t%v", value.input[1])
  t.Errorf("actual:\t%v", actual)
  t.Errorf("expected:\t%v", value.expected)
}

func TestHumanitySaver(t *testing.T) {
  for _, value := range tableTests {
    actual := HumanitySaver{value.input[0], value.input[1]}.FindMatches()
    if len(actual) != len(value.expected) {
      PrintError(t, &value, actual)
    } else {
      for i := 0; i < len(actual); i++ {
        if actual[i] != value.expected[i] {
          PrintError(t, &value, actual)
          break
        }
      }
    }
  }
}
