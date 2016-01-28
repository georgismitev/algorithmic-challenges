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

func findRoot(tree map[int][]int, treeLen int, childrenLen int) int {
  keys := make(map[int]bool, treeLen)
  children := make(map[int]bool, childrenLen)
  for key := range tree {
    keys[key] = true
    for _, child := range tree[key] {
      children[child] = true
    }
  }
  root := -1
  for key := range keys {
    if children[key] == false {
      root = key
    }
  }
  return root
}

type BinaryIndexedTree struct {
  array []int
  length int
}

func NewBinaryIndexedTree(length int) *BinaryIndexedTree {
  binaryIndexedTree := BinaryIndexedTree{}
  binaryIndexedTree.array = make([]int, length + 1)
  binaryIndexedTree.length = length
  return &binaryIndexedTree
}

func (t BinaryIndexedTree) Update(index int, value int) {
  for index <= t.length {
    t.array[index] += value
    index += (index & -index)
  }
}

func (t BinaryIndexedTree) RangeValueOf(start int, end int) int {
  if start < 1 {
    start = 1
  }
  if end > t.length {
    end = t.length
  }
  startValue := 0
  if start != 1 {
    startValue = t.ValueOf(start - 1)
  }
  rangeValue := t.ValueOf(end) - startValue
  return rangeValue
}

func (t BinaryIndexedTree) ValueOf(index int) int {
  sum := 0
  for index > 0 {
    sum += t.array[index]
    index -= (index & -index)
  }
  return sum
}

func dfs(tree map[int][]int, node int, t int, binaryIndexedTree *BinaryIndexedTree) int {
  pairs := binaryIndexedTree.RangeValueOf(node - t, node + t)
  binaryIndexedTree.Update(node, 1)
  for _, edge := range tree[node] {
    pairs += dfs(tree, edge, t, binaryIndexedTree)
  }
  binaryIndexedTree.Update(node, -1)
  return pairs
}

func main() {
  var n int
  var t int
  var startEdge int
  var endEdge int

  n = readInt()
  t = readInt()

  tree := make(map[int][]int)

  for i := 0; i < n - 1; i++ {
    startEdge = readInt()
    endEdge = readInt()
    tree[startEdge] = append(tree[startEdge], endEdge)
  }

  root := findRoot(tree, len(tree), n - 1)
  binaryIndexedTree := NewBinaryIndexedTree(n)

  fmt.Println(dfs(tree, root, t, binaryIndexedTree))
}
