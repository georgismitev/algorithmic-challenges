require 'spec_helper'

describe GraphRoute do
  describe '.exists?' do
    describe 'test case 1' do
      let(:graph) do
        g = Hash.new { |hash, key| hash[key] = {} }
        g[1][1] = 1
        g[1][2] = 1
        g[1][3] = 1
        g[1][4] = 1
        g[2][5] = 1
        g[5][6] = 1
        g
      end
      it { expect(GraphRoute.between(graph, 1, 1)).to be true }
      it { expect(GraphRoute.between(graph, 1, 2)).to be true }
      it { expect(GraphRoute.between(graph, 1, 3)).to be true }
      it { expect(GraphRoute.between(graph, 1, 4)).to be true }
      it { expect(GraphRoute.between(graph, 1, 5)).to be true }
      it { expect(GraphRoute.between(graph, 1, 6)).to be true }
      it { expect(GraphRoute.between(graph, 1, 7)).to be false }
      it { expect(GraphRoute.between(graph, 7, 8)).to be false }
    end
  end
end
