package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
  "math"
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

func min(a int, b int) int {
  if a < b {
    return a
  }

  return b
}

type FloydDirectedGraph struct {
  matrix [][]int
  size int
}

func NewFloydDirectedGraph(n int) *FloydDirectedGraph {
  g := new(FloydDirectedGraph)
  g.size = n + 1
  g.matrix = make([][]int, g.size)
  for i := range g.matrix {
    g.matrix[i] = make([]int, g.size)
  }

  for i := 0; i < g.size; i++ {
    for j := 0; j < g.size; j++ {
      if i == j {
        g.matrix[i][j] = 0
      } else {
        g.matrix[i][j] = math.MaxInt16
      }
    }
  }

  return g
}

func (g FloydDirectedGraph) AddEdge(i int, j int, weight int) {
  g.matrix[i][j] = weight
}

type FloydShortestPath struct {
  graph *FloydDirectedGraph
}

func NewFloydShortestPath(g *FloydDirectedGraph) *FloydShortestPath {
  return &FloydShortestPath{graph: g}
}

func (f FloydShortestPath) FindShortestPaths() {
  for k := 1; k < f.graph.size; k++ {
    for i := 1; i < f.graph.size; i++ {
      for j := 1; j < f.graph.size; j++ {
        if f.graph.matrix[i][k] != math.MaxInt16 && f.graph.matrix[k][j] != math.MaxInt16 {
          if f.graph.matrix[i][j] > f.graph.matrix[i][k] + f.graph.matrix[k][j] {
            f.graph.matrix[i][j] = f.graph.matrix[i][k] + f.graph.matrix[k][j]
          }
        }
      }
    }
  }
}

func (f FloydShortestPath) DistanceBetween(i int, j int) int {
  distance := f.graph.matrix[i][j]
  if distance == math.MaxInt16 {
    return -1
  } else {
    return distance
  }
}

func main() {
  var n int
  var m int
  var q int

  n = readInt()
  m = readInt()

  graph := NewFloydDirectedGraph(n)

  for i := 0; i < m; i++ {
    startVertex := readInt()
    endVertex := readInt()
    weight := readInt()
    graph.AddEdge(startVertex, endVertex, weight)
  }

  q = readInt()
  floyd := NewFloydShortestPath(graph)
  floyd.FindShortestPaths()

  for i := 0; i < q; i++ {
    startVertex := readInt()
    endVertex := readInt()
    fmt.Println(floyd.DistanceBetween(startVertex, endVertex))
  }
}
