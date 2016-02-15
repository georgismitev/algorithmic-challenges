class MaximumMatching
  def self.find_max_flow(graph, source, consumer)
    MaxFlow.new(graph).find_max_flow(source, consumer)
  end
end
