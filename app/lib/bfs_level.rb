class BfsLevel
  def self.find_all(graph, source)
    levels = Hash.new { |h, k| h[k] = [] }
    level = 1
    queue = [source]
    visited = { }
    queue_start = 0
    queue_end = 1
    visited[source] = 1

    while queue_start < queue_end do
      i = queue_start
      while i < queue_end do
        graph[queue[i]].each do |v|
          queue.push(v) unless visited[v]
          visited[v] = 1
        end
        levels[level].push(queue[i])
        i += 1
      end
      queue_start = i
      queue_end = queue.length
      level += 1
    end

    levels
  end
end
