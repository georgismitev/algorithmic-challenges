package main

import (
  "fmt"
)

type VertexWithLevel struct {
  vertex int
  level int
}

type UndirectedGraph struct {
  adjacencyList map[int]map[int]uint8
}

func NewUndirectedGraph(edges int) *UndirectedGraph {
  return &UndirectedGraph{ adjacencyList: make(map[int]map[int]uint8, edges) }
}

func (graph UndirectedGraph) AddEdge(startEdge int, endEdge int) {
  if graph.adjacencyList[startEdge] == nil {
    graph.adjacencyList[startEdge] = make(map[int]uint8)
  }
  if graph.adjacencyList[endEdge] == nil {
    graph.adjacencyList[endEdge] = make(map[int]uint8)
  }
  graph.adjacencyList[startEdge][endEdge] = 1
  graph.adjacencyList[endEdge][startEdge] = 1
}

func (graph UndirectedGraph) FindShortestPaths(startVertex int) map[int]int {
  queue := []VertexWithLevel{VertexWithLevel{startVertex, 1}}
  paths := make(map[int]int, len(graph.adjacencyList) - 1)
  visited := make(map[int]int, len(graph.adjacencyList))

  for {
    if len(queue) == 0 {
      break
    }

    node, level := queue[0].vertex, queue[0].level
    queue = queue[1:]

    if visited[node] > 0 {
      continue
    }

    visited[node] = 1

    for edge := range graph.adjacencyList[node] {
      if visited[edge] == 0 {
        if paths[edge] == 0 {
          paths[edge] = level * 6
        }
        if len(graph.adjacencyList[edge]) > 0 {
          queue = append(queue, VertexWithLevel{edge, level + 1})
        }
      }
    }
  }

  return paths
}

func main() {
  var t int
  var n int
  var m int
  var start int
  var startEdge int
  var endEdge int

  fmt.Scan(&t)

  for k := 0; k < t; k++ {
    fmt.Scan(&n)
    fmt.Scan(&m)

    graph := NewUndirectedGraph(m)
    for j := 0; j < m; j++ {
      fmt.Scan(&startEdge)
      fmt.Scan(&endEdge)
      graph.AddEdge(startEdge, endEdge)
    }

    fmt.Scan(&start)

    paths := graph.FindShortestPaths(start)

    for i := 0; i < n; i++ {
      if i + 1 == start {
        continue
      }

      if len(graph.adjacencyList[i + 1]) == 0 || paths[i + 1] == 0 {
        fmt.Print(-1)
      } else {
        fmt.Print(paths[i + 1])
      }

      if i == n - 1 {
        fmt.Println("")
      } else {
        fmt.Print(" ")
      }
    }
  }
}
