class GraphRoute
  def self.between(graph, start_node, end_node)
    stack = [start_node]
    visited = { }

    while !stack.empty? do
      node = stack.pop
      visited[node] = 1
      graph[node].each_pair do |k, _|
        return true if k == end_node
        stack.push(k) unless visited[k]
      end
    end

    false
  end
end
