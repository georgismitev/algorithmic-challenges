require 'spec_helper'

describe RedBlackTree do
  describe '#rotate_right' do
    before do
      tree.insert(10)
      tree.insert(11)
      tree.insert(8)
      tree.insert(6)
      tree.insert(9)
      expect(tree.size).to eq(5)
      expect(tree.root.value).to eq(10)
      expect(tree.root.right.value).to eq(11)
      expect(tree.root.right.left).to be_a(RedBlackNilNode)
      expect(tree.root.right.right).to be_a(RedBlackNilNode)
      expect(tree.root.left.value).to eq(8)
      expect(tree.root.left.left.value).to eq(6)
      expect(tree.root.left.left.left).to be_a(RedBlackNilNode)
      expect(tree.root.left.left.right).to be_a(RedBlackNilNode)
      expect(tree.root.left.right.value).to eq(9)
      expect(tree.root.left.right.left).to be_a(RedBlackNilNode)
      expect(tree.root.left.right.right).to be_a(RedBlackNilNode)
    end

    context 'when the parent is root' do
      it 'updates the root' do
        tree.rotate_right(tree.root.left)
        expect(tree.size).to eq(5)
        expect(tree.root.value).to eq(8)
        expect(tree.root.left.value).to eq(6)
        expect(tree.root.left.left).to be_a(RedBlackNilNode)
        expect(tree.root.left.right).to be_a(RedBlackNilNode)
        expect(tree.root.right.value).to eq(10)
        expect(tree.root.right.left.value).to eq(9)
        expect(tree.root.right.left.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.left.right).to be_a(RedBlackNilNode)
        expect(tree.root.right.right.value).to eq(11)
        expect(tree.root.right.right.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.right.right).to be_a(RedBlackNilNode)
      end
    end

    context 'when the parent is not root' do
      it 'correctly sets the nodes' do
        tree.insert(5)
        tree.insert(7)
        tree.rotate_right(tree.root.left.left)
        expect(tree.size).to eq(7)
        expect(tree.root.value).to eq(10)
        expect(tree.root.right.value).to eq(11)
        expect(tree.root.right.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.right).to be_a(RedBlackNilNode)
        expect(tree.root.left.value).to eq(6)
        expect(tree.root.left.left.value).to eq(5)
        expect(tree.root.left.left.left).to be_a(RedBlackNilNode)
        expect(tree.root.left.left.right).to be_a(RedBlackNilNode)
        expect(tree.root.left.right.value).to eq(8)
        expect(tree.root.left.right.left.value).to eq(7)
        expect(tree.root.left.right.left.left).to be_a(RedBlackNilNode)
        expect(tree.root.left.right.left.right).to be_a(RedBlackNilNode)
        expect(tree.root.left.right.right.value).to eq(9)
        expect(tree.root.left.right.right.left).to be_a(RedBlackNilNode)
        expect(tree.root.left.right.right.right).to be_a(RedBlackNilNode)
      end
    end
  end

  describe '#rotate_left' do
    before do
      tree.insert(10)
      tree.insert(9)
      tree.insert(12)
      tree.insert(11)
      tree.insert(14)
      expect(tree.size).to eq(5)
      expect(tree.root.value).to eq(10)
      expect(tree.root.left.value).to eq(9)
      expect(tree.root.left.left).to be_a(RedBlackNilNode)
      expect(tree.root.left.right).to be_a(RedBlackNilNode)
      expect(tree.root.right.value).to eq(12)
      expect(tree.root.right.left.value).to eq(11)
      expect(tree.root.right.left.left).to be_a(RedBlackNilNode)
      expect(tree.root.right.left.right).to be_a(RedBlackNilNode)
      expect(tree.root.right.right.value).to eq(14)
      expect(tree.root.right.right.left).to be_a(RedBlackNilNode)
      expect(tree.root.right.right.right).to be_a(RedBlackNilNode)
    end

    context 'when the parent is root' do
      it 'updates the root' do
        tree.rotate_left(tree.root.right)
        expect(tree.size).to eq(5)
        expect(tree.root.value).to eq(12)
        expect(tree.root.right.value).to eq(14)
        expect(tree.root.right.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.right).to be_a(RedBlackNilNode)
        expect(tree.root.left.value).to eq(10)
        expect(tree.root.left.left.value).to eq(9)
        expect(tree.root.left.left.left).to be_a(RedBlackNilNode)
        expect(tree.root.left.left.right).to be_a(RedBlackNilNode)
        expect(tree.root.left.right.value).to eq(11)
        expect(tree.root.left.right.left).to be_a(RedBlackNilNode)
        expect(tree.root.left.right.right).to be_a(RedBlackNilNode)
      end
    end

    context 'when the parent is not root' do
      it 'correctly sets the nodes' do
        tree.insert(13)
        tree.insert(15)
        tree.rotate_left(tree.root.right.right)
        expect(tree.root.value).to eq(10)
        expect(tree.root.left.value).to eq(9)
        expect(tree.root.left.left).to be_a(RedBlackNilNode)
        expect(tree.root.left.right).to be_a(RedBlackNilNode)
        expect(tree.root.right.value).to eq(14)
        expect(tree.root.right.right.value).to eq(15)
        expect(tree.root.right.right.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.right.right).to be_a(RedBlackNilNode)
        expect(tree.root.right.left.value).to eq(12)
        expect(tree.root.right.left.left.value).to eq(11)
        expect(tree.root.right.left.left.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.left.left.right).to be_a(RedBlackNilNode)
        expect(tree.root.right.left.right.value).to eq(13)
        expect(tree.root.right.left.right.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.left.right.right).to be_a(RedBlackNilNode)
      end
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
