require 'spec_helper'

describe RedBlackTree do
  let(:tree) { RedBlackTree.new }

  describe '#initialize' do
    it 'creates an empty tree' do
      expect(tree.size).to eq(0)
      expect(tree.root).to be_a(RedBlackNilNode)
      expect(tree.root.color).to eq(:black)
      expect(tree.root.black?).to be true
      expect(tree.root.red?).to be false
    end
  end

  describe '#find' do
    describe 'test case 1' do
      it 'finds the right element' do
        tree.insert(3)
        expect(tree.find(6)).to eq(nil)
        tree.insert(6)
        expect(tree.find(1)).to eq(3)
        tree.insert(1)
        expect(tree.find(3)).to eq(6)
      end
    end

    describe 'test case 2' do
      it 'finds the right element' do
        tree.insert(6)
        expect(tree.find(12)).to eq(nil)
        tree.insert(12)
        expect(tree.find(10)).to eq(12)
        tree.insert(10)
        expect(tree.find(12)).to eq(nil)
        tree.insert(12)
        expect(tree.find(11)).to eq(12)
        tree.insert(11)
        expect(tree.find(12)).to eq(nil)
      end
    end
  end
end
