class FordFulkersonEdge
  # total capacity
  attr_accessor :capacity
  # actual units moving throught that edge
  attr_accessor :flow
  attr_accessor :residual_capacity

  def initialize(capacity)
    @capacity = capacity
    @flow = 0
    @residual_capacity = [@capacity - @flow, 0].max
  end

  def add_flow(new_flow)
    @flow += new_flow
    @residual_capacity = [@capacity - @flow, 0].max
  end

  def add_residual_capacity(new_capacity)
    @residual_capacity += new_capacity
  end
end
