require 'spec_helper'

describe BfsLevel do
  describe 'test case 1' do
    let(:graph) do
      g = UndirectedGraph.new
      g.add_edge(1, 2)
      g.add_edge(2, 4)
      g.add_edge(2, 5)
      g.add_edge(2, 3)
      g.add_edge(4, 12)
      g.add_edge(3, 6)
      g.add_edge(5, 7)
      g.add_edge(12, 6)
      g.add_edge(7, 6)
      g.add_edge(7, 10)
      g.add_edge(10, 11)
      g
    end
    let(:expected_levels) do
      {
        1 => [1],
        2 => [2],
        3 => [4, 5, 3],
        4 => [12, 7, 6],
        5 => [10],
        6 => [11]
      }
    end
    let(:source) { 1 }

    it { expect(BfsLevel.find_all(graph, source)).to eq(expected_levels) }
  end

  describe 'test case 2' do
    let(:graph) do
      g = UndirectedGraph.new
      g.add_edge(1, 2)
      g.add_edge(2, 4)
      g.add_edge(2, 5)
      g.add_edge(2, 3)
      g.add_edge(4, 12)
      g.add_edge(3, 6)
      g.add_edge(5, 7)
      g.add_edge(12, 6)
      g.add_edge(7, 6)
      g.add_edge(7, 10)
      g.add_edge(10, 11)
      g
    end
    let(:expected_levels) do
      {
        1 => [5],
        2 => [2, 7],
        3 => [1, 4, 3, 6, 10],
        4 => [12, 11]
      }
    end
    let(:source) { 5 }

    it { expect(BfsLevel.find_all(graph, source)).to eq(expected_levels) }
  end

  describe 'test case 3' do
    let(:graph) do
      g = UndirectedGraph.new
      g.add_edge(1, 1)
      g
    end
    let(:expected_levels) { { 1 => [1] } }
    let(:source) { 1 }

    it { expect(BfsLevel.find_all(graph, source)).to eq(expected_levels) }
  end

  describe 'test case 4' do
    let(:graph) do
      g = UndirectedGraph.new
      g.add_edge(1, 1)
      g.add_edge(1, 2)
      g.add_edge(1, 3)
      g.add_edge(1, 5)
      g.add_edge(1, 4)
      g
    end
    let(:expected_levels) { { 1 => [1], 2 => [2, 3, 5, 4] } }
    let(:source) { 1 }

    it { expect(BfsLevel.find_all(graph, source)).to eq(expected_levels) }
  end
end
