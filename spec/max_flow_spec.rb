require 'spec_helper'

describe MaxFlow do
  describe 'test case 1' do
    let(:graph) do
      g = FordFulkersonGraph.new
      g.add_edge(1, 4, 10)
      g.add_edge(1, 2, 5)
      g.add_edge(1, 3, 5)
      g.add_edge(4, 6, 7)
      g.add_edge(2, 6, 5)
      g.add_edge(5, 6, 8)
      g.add_edge(3, 5, 7)
      g.add_edge(2, 3, 4)
      g
    end
    let(:source) { 1 }
    let(:consumer) { 6 }
    it { expect(MaxFlow.new(graph).find_max_flow(source, consumer)).to eq(17) }
  end

  describe 'test case 2' do
    let(:graph) do
      g = FordFulkersonGraph.new
      g.add_edge(4, 1, 2)
      g.add_edge(1, 5, 3)
      g.add_edge(4, 2, 3)
      g.add_edge(2, 3, 1)
      g.add_edge(2, 1, 1)
      g.add_edge(3, 5, 3)
      g
    end
    let(:source) { 4 }
    let(:consumer) { 5 }
    it { expect(MaxFlow.new(graph).find_max_flow(source, consumer)).to eq(4) }
  end

  describe 'test case 3' do
    let(:graph) do
      g = FordFulkersonGraph.new
      g.add_edge(1, 2, 3)
      g.add_edge(1, 4, 3)
      g.add_edge(3, 1, 3)
      g.add_edge(3, 4, 1)
      g.add_edge(3, 5, 2)
      g.add_edge(2, 3, 4)
      g.add_edge(5, 2, 1)
      g.add_edge(5, 6, 1)
      g.add_edge(4, 5, 2)
      g.add_edge(4, 7, 6)
      g.add_edge(7, 6, 9)
      g
    end
    let(:source) { 1 }
    let(:consumer) { 6 }
    it { expect(MaxFlow.new(graph).find_max_flow(source, consumer)).to eq(5) }
  end
end
