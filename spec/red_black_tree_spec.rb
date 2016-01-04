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

  describe '#insert' do
    context 'when the tree is empty' do
      it 'initialize the red black tree with black root' do
        tree.insert(10)
        expect(tree.size).to eq(1)
        expect(tree.root.value).to eq(10)
        expect(tree.root.black?).to be true
        expect(tree.root.red?).to be false
        expect(tree.root.left).to be_a(RedBlackNilNode)
        expect(tree.root.left.black?).to be true
        expect(tree.root.right).to be_a(RedBlackNilNode)
        expect(tree.root.right.black?).to be true
      end
    end

    context 'when there is only root node' do
      before { tree.insert(10) }

      it 'inserts 2 leaves' do
        tree.insert(8)
        expect(tree.size).to eq(2)
        expect(tree.root.right).to be_a(RedBlackNilNode)
        expect(tree.root.left).to be_a(RedBlackTreeNode)
        expect(tree.root.left.value).to eq(8)
        expect(tree.root.left.red?).to be true
        expect(tree.root.left.black?).to be false
        expect(tree.root.left.left).to be_a(RedBlackNilNode)
        expect(tree.root.left.right).to be_a(RedBlackNilNode)
        tree.insert(12)
        expect(tree.size).to eq(3)
        expect(tree.root.right).to be_a(RedBlackTreeNode)
        expect(tree.root.left).to be_a(RedBlackTreeNode)
        expect(tree.root.right.value).to eq(12)
        expect(tree.root.right.red?).to be true
        expect(tree.root.right.black?).to be false
        expect(tree.root.right.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.right).to be_a(RedBlackNilNode)
      end
    end

    context 'when there are 2 levels and we add a third one' do
      before do
        tree.insert(10)
        tree.insert(8)
        tree.insert(12)
      end

      it 'inserts 4 leaves' do
        expect(tree.size).to eq(3)
        expect(tree.root.value).to eq(10)
        expect(tree.root.left.value).to eq(8)
        expect(tree.root.left.red?).to eq(true)
        expect(tree.root.left.black?).to eq(false)
        expect(tree.root.right.value).to eq(12)
        expect(tree.root.right.red?).to eq(true)
        expect(tree.root.right.black?).to eq(false)
        tree.insert(7)
        expect(tree.size).to eq(4)
        expect(tree.root.black?).to eq(true)
        expect(tree.root.left.red?).to eq(false)
        expect(tree.root.left.black?).to eq(true)
        expect(tree.root.right.red?).to eq(false)
        expect(tree.root.right.black?).to eq(true)
        expect(tree.root.left.left.red?).to eq(true)
        expect(tree.root.left.left.black?).to eq(false)
        expect(tree.root.left.left.value).to eq(7)
        expect(tree.root.left.left.left).to be_a(RedBlackNilNode)
        expect(tree.root.left.left.right).to be_a(RedBlackNilNode)
        tree.insert(9)
        expect(tree.size).to eq(5)
        expect(tree.root.black?).to eq(true)
        expect(tree.root.left.red?).to eq(false)
        expect(tree.root.left.black?).to eq(true)
        expect(tree.root.right.red?).to eq(false)
        expect(tree.root.right.black?).to eq(true)
        expect(tree.root.left.right.red?).to eq(true)
        expect(tree.root.left.right.black?).to eq(false)
        expect(tree.root.left.right.value).to eq(9)
        expect(tree.root.left.right.left).to be_a(RedBlackNilNode)
        expect(tree.root.left.right.right).to be_a(RedBlackNilNode)
        tree.insert(11)
        expect(tree.size).to eq(6)
        expect(tree.root.black?).to eq(true)
        expect(tree.root.left.red?).to eq(false)
        expect(tree.root.left.black?).to eq(true)
        expect(tree.root.right.red?).to eq(false)
        expect(tree.root.right.black?).to eq(true)
        expect(tree.root.right.left.red?).to eq(true)
        expect(tree.root.right.left.black?).to eq(false)
        expect(tree.root.right.left.value).to eq(11)
        expect(tree.root.right.left.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.left.right).to be_a(RedBlackNilNode)
        tree.insert(13)
        expect(tree.size).to eq(7)
        expect(tree.root.black?).to eq(true)
        expect(tree.root.left.red?).to eq(false)
        expect(tree.root.left.black?).to eq(true)
        expect(tree.root.right.red?).to eq(false)
        expect(tree.root.right.black?).to eq(true)
        expect(tree.root.right.right.red?).to eq(true)
        expect(tree.root.right.right.black?).to eq(false)
        expect(tree.root.right.right.value).to eq(13)
        expect(tree.root.right.right.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.right.right).to be_a(RedBlackNilNode)
      end
    end

    describe 'when inserting a red node' do
      before do
        tree.insert(10)
        tree.insert(-10)
        tree.insert(20)
        tree.insert(-20)
        tree.insert(25)
        tree.insert(6)
        expect(tree.root.value).to eq(10)
        expect(tree.root.black?).to eq(true)
        expect(tree.root.left.value).to eq(-10)
        expect(tree.root.left.black?).to eq(true)
        expect(tree.root.right.value).to eq(20)
        expect(tree.root.right.black?).to eq(true)
        expect(tree.root.right.right.value).to eq(25)
        expect(tree.root.right.right.red?).to eq(true)
        expect(tree.root.left.left.value).to eq(-20)
        expect(tree.root.left.left.red?).to eq(true)
        expect(tree.root.left.right.value).to eq(6)
        expect(tree.root.left.right.red?).to eq(true)
      end

      describe 'when the parent is red' do
        describe 'example 1' do
          it 'recolors the parent' do
            tree.insert(4)
            expect(tree.size).to eq(7)
            expect(tree.root.left.value).to eq(-10)
            expect(tree.root.left.red?).to eq(true)
            expect(tree.root.left.left.value).to eq(-20)
            expect(tree.root.left.left.black?).to eq(true)
            expect(tree.root.left.right.value).to eq(6)
            expect(tree.root.left.right.black?).to eq(true)
            expect(tree.root.left.right.left.value).to eq(4)
            expect(tree.root.left.right.left.red?).to eq(true)
          end
        end

        describe 'example 2' do
          before do
            tree.insert(15)
            tree.insert(8)
            tree.insert(2)
            expect(tree.root.left.value).to eq(-10)
            expect(tree.root.left.red?).to eq(true)
            expect(tree.root.left.left.value).to eq(-20)
            expect(tree.root.left.left.black?).to eq(true)
            expect(tree.root.left.right.value).to eq(6)
            expect(tree.root.left.right.black?).to eq(true)
            expect(tree.root.left.right.left.value).to eq(2)
            expect(tree.root.left.right.left.red?).to eq(true)
            expect(tree.root.left.right.right.value).to eq(8)
            expect(tree.root.left.right.right.red?).to eq(true)
          end

          it 'recolors the parent nodes and changes the root' do
            tree.insert(4)
            expect(tree.size).to eq(10)
            expect(tree.root.value).to eq(6)
            expect(tree.root.black?).to eq(true)
            expect(tree.root.right.value).to eq(10)
            expect(tree.root.right.red?).to eq(true)
            expect(tree.root.right.left.value).to eq(8)
            expect(tree.root.right.left.black?).to eq(true)
            expect(tree.root.right.right.value).to eq(20)
            expect(tree.root.right.right.black?).to eq(true)
            expect(tree.root.right.right.left.value).to eq(15)
            expect(tree.root.right.right.left.red?).to eq(true)
            expect(tree.root.right.right.right.value).to eq(25)
            expect(tree.root.right.right.right.red?).to eq(true)
            expect(tree.root.left.value).to eq(-10)
            expect(tree.root.left.red?).to eq(true)
            expect(tree.root.left.right.value).to eq(2)
            expect(tree.root.left.right.black?).to eq(true)
            expect(tree.root.left.right.left).to be_a(RedBlackNilNode)
            expect(tree.root.left.right.right.value).to eq(4)
            expect(tree.root.left.right.right.red?).to eq(true)
            expect(tree.root.left.right.left).to be_a(RedBlackNilNode)
          end
        end
      end

      describe 'when the parent is black' do
        it 'just inserts the node, no changes to the color of the parent' do
          tree.insert(19)
          expect(tree.size).to eq(7)
          expect(tree.root.right.value).to eq(20)
          expect(tree.root.right.black?).to eq(true)
          expect(tree.root.right.right.value).to eq(25)
          expect(tree.root.right.right.red?).to eq(true)
          expect(tree.root.right.left.value).to eq(19)
          expect(tree.root.right.left.red?).to eq(true)
        end
      end
    end

    describe 'when the sibling is black or absent' do
      before do
        tree.insert(10)
        tree.insert(-10)
        tree.insert(20)
        tree.insert(7)
        tree.insert(15)
        expect(tree.root.value).to eq(10)
        expect(tree.root.black?).to eq(true)
        expect(tree.root.left.value).to eq(-10)
        expect(tree.root.left.black?).to eq(true)
        expect(tree.root.right.value).to eq(20)
        expect(tree.root.right.black?).to eq(true)
        expect(tree.root.right.left.value).to eq(15)
        expect(tree.root.right.left.red?).to eq(true)
        expect(tree.root.left.right.value).to eq(7)
        expect(tree.root.left.right.red?).to eq(true)
        expect(tree.size).to eq(5)
      end

      it 'makes right rotation' do
        tree.insert(13)
        expect(tree.root.right.value).to eq(15)
        expect(tree.root.right.black?).to eq(true)
        expect(tree.root.right.right.value).to eq(20)
        expect(tree.root.right.right.red?).to eq(true)
        expect(tree.root.right.left.value).to eq(13)
        expect(tree.root.right.left.red?).to eq(true)
      end

      it 'makes left and right rotation' do
        tree.insert(17)
        expect(tree.root.right.value).to eq(17)
        expect(tree.root.right.black?).to eq(true)
        expect(tree.root.right.right.value).to eq(20)
        expect(tree.root.right.right.red?).to eq(true)
        expect(tree.root.right.left.value).to eq(15)
        expect(tree.root.right.left.red?).to eq(true)
      end
    end

    describe 'when the sibling is black or absent' do
      before do
        tree.insert(10)
        tree.insert(-10)
        tree.insert(20)
        tree.insert(-20)
        tree.insert(6)
        tree.insert(15)
        tree.insert(30)
        tree.insert(1)
        tree.insert(9)
        expect(tree.size).to eq(9)
        expect(tree.root.value).to eq(10)
        expect(tree.root.black?).to eq(true)
        expect(tree.root.left.value).to eq(-10)
        expect(tree.root.left.red?).to eq(true)
        expect(tree.root.left.left.value).to eq(-20)
        expect(tree.root.left.left.black?).to eq(true)
        expect(tree.root.left.right.value).to eq(6)
        expect(tree.root.left.right.black?).to eq(true)
        expect(tree.root.left.right.left.value).to eq(1)
        expect(tree.root.left.right.left.red?).to eq(true)
        expect(tree.root.left.right.right.value).to eq(9)
        expect(tree.root.left.right.right.red?).to eq(true)
        expect(tree.root.right.value).to eq(20)
        expect(tree.root.right.black?).to eq(true)
        expect(tree.root.right.left.value).to eq(15)
        expect(tree.root.right.left.red?).to eq(true)
        expect(tree.root.right.right.value).to eq(30)
        expect(tree.root.right.right.red?).to eq(true)
      end

      it 'makes left and right rotation' do
        tree.insert(4)
        expect(tree.size).to eq(10)
        expect(tree.root.value).to eq(6)
        expect(tree.root.black?).to eq(true)
        expect(tree.root.right.value).to eq(10)
        expect(tree.root.right.red?).to eq(true)
        expect(tree.root.right.right.value).to eq(20)
        expect(tree.root.right.right.black?).to eq(true)
        expect(tree.root.right.right.left.value).to eq(15)
        expect(tree.root.right.right.left.red?).to eq(true)
        expect(tree.root.right.right.right.value).to eq(30)
        expect(tree.root.right.right.right.red?).to eq(true)
        expect(tree.root.right.left.value).to eq(9)
        expect(tree.root.right.left.black?).to eq(true)
        expect(tree.root.left.value).to eq(-10)
        expect(tree.root.left.red?).to eq(true)
        expect(tree.root.left.left.value).to eq(-20)
        expect(tree.root.left.left.black?).to eq(true)
        expect(tree.root.left.right.value).to eq(1)
        expect(tree.root.left.right.black?).to eq(true)
        expect(tree.root.left.right.right.value).to eq(4)
        expect(tree.root.left.right.right.red?).to eq(true)
      end
    end

    describe 'full test from empty tree' do
      it 'inserts all nodes correctly' do
        expect(tree.size).to eq(0)
        expect(tree.root).to be_a(RedBlackNilNode)
        tree.insert(10)
        expect(tree.size).to eq(1)
        expect(tree.root.value).to eq(10)
        expect(tree.root.black?).to eq(true)
        expect(tree.root.left).to be_a(RedBlackNilNode)
        expect(tree.root.right).to be_a(RedBlackNilNode)
        tree.insert(20)
        expect(tree.size).to eq(2)
        expect(tree.root.value).to eq(10)
        expect(tree.root.black?).to eq(true)
        expect(tree.root.left).to be_a(RedBlackNilNode)
        expect(tree.root.right).to be_a(RedBlackTreeNode)
        expect(tree.root.right.value).to eq(20)
        expect(tree.root.right.red?).to eq(true)
        expect(tree.root.right.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.right).to be_a(RedBlackNilNode)
        tree.insert(-10)
        expect(tree.size).to eq(3)
        expect(tree.root.value).to eq(10)
        expect(tree.root.black?).to eq(true)
        expect(tree.root.left).to be_a(RedBlackTreeNode)
        expect(tree.root.right).to be_a(RedBlackTreeNode)
        expect(tree.root.left.value).to eq(-10)
        expect(tree.root.left.red?).to eq(true)
        expect(tree.root.left.left).to be_a(RedBlackNilNode)
        expect(tree.root.left.right).to be_a(RedBlackNilNode)
        tree.insert(15)
        expect(tree.size).to eq(4)
        expect(tree.root.value).to eq(10)
        expect(tree.root.black?).to eq(true)
        expect(tree.root.left).to be_a(RedBlackTreeNode)
        expect(tree.root.right).to be_a(RedBlackTreeNode)
        expect(tree.root.left.value).to eq(-10)
        expect(tree.root.left.black?).to eq(true)
        expect(tree.root.left.left).to be_a(RedBlackNilNode)
        expect(tree.root.left.right).to be_a(RedBlackNilNode)
        expect(tree.root.right.value).to eq(20)
        expect(tree.root.right.black?).to eq(true)
        expect(tree.root.right.left).to be_a(RedBlackTreeNode)
        expect(tree.root.right.right).to be_a(RedBlackNilNode)
        expect(tree.root.right.left.value).to eq(15)
        expect(tree.root.right.left.red?).to eq(true)
        expect(tree.root.right.left.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.left.right).to be_a(RedBlackNilNode)
        tree.insert(17)
        expect(tree.size).to eq(5)
        expect(tree.root.value).to eq(10)
        expect(tree.root.black?).to eq(true)
        expect(tree.root.left).to be_a(RedBlackTreeNode)
        expect(tree.root.right).to be_a(RedBlackTreeNode)
        expect(tree.root.right.value).to eq(17)
        expect(tree.root.right.black?).to eq(true)
        expect(tree.root.right.left).to be_a(RedBlackTreeNode)
        expect(tree.root.right.right).to be_a(RedBlackTreeNode)
        expect(tree.root.right.right.value).to eq(20)
        expect(tree.root.right.right.red?).to eq(true)
        expect(tree.root.right.right.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.right.right).to be_a(RedBlackNilNode)
        expect(tree.root.right.left.value).to eq(15)
        expect(tree.root.right.left.red?).to eq(true)
        expect(tree.root.right.left.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.left.right).to be_a(RedBlackNilNode)
        tree.insert(40)
        expect(tree.size).to eq(6)
        expect(tree.root.value).to eq(10)
        expect(tree.root.black?).to eq(true)
        expect(tree.root.left).to be_a(RedBlackTreeNode)
        expect(tree.root.right).to be_a(RedBlackTreeNode)
        expect(tree.root.right.value).to eq(17)
        expect(tree.root.right.red?).to eq(true)
        expect(tree.root.right.left).to be_a(RedBlackTreeNode)
        expect(tree.root.right.right).to be_a(RedBlackTreeNode)
        expect(tree.root.right.right.value).to eq(20)
        expect(tree.root.right.right.black?).to eq(true)
        expect(tree.root.right.right.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.right.right).to be_a(RedBlackTreeNode)
        expect(tree.root.right.right.right.value).to eq(40)
        expect(tree.root.right.right.right.red?).to eq(true)
        expect(tree.root.right.right.right.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.right.right.right).to be_a(RedBlackNilNode)
        expect(tree.root.right.left.value).to eq(15)
        expect(tree.root.right.left.black?).to eq(true)
        expect(tree.root.right.left.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.left.right).to be_a(RedBlackNilNode)
        tree.insert(50)
        expect(tree.size).to eq(7)
        expect(tree.root.right.value).to eq(17)
        expect(tree.root.right.red?).to eq(true)
        expect(tree.root.right.left.value).to eq(15)
        expect(tree.root.right.left.black?).to eq(true)
        expect(tree.root.right.right.value).to eq(40)
        expect(tree.root.right.right.black?).to eq(true)
        expect(tree.root.right.right.right.value).to eq(50)
        expect(tree.root.right.right.right.red?).to eq(true)
        expect(tree.root.right.right.right.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.right.right.right).to be_a(RedBlackNilNode)
        expect(tree.root.right.right.left.value).to eq(20)
        expect(tree.root.right.right.left.red?).to eq(true)
        expect(tree.root.right.right.left.left).to be_a(RedBlackNilNode)
        expect(tree.root.right.right.left.right).to be_a(RedBlackNilNode)
        tree.insert(60)
        expect(tree.size).to eq(8)
        expect(tree.root.value).to eq(17)
        expect(tree.root.black?).to eq(true)
        expect(tree.root.left.value).to eq(10)
        expect(tree.root.left.red?).to eq(true)
        expect(tree.root.left.right.value).to eq(15)
        expect(tree.root.left.right.black?).to eq(true)
        expect(tree.root.left.left.value).to eq(-10)
        expect(tree.root.left.left.black?).to eq(true)
        expect(tree.root.right.value).to eq(40)
        expect(tree.root.right.red?).to eq(true)
        expect(tree.root.right.left.value).to eq(20)
        expect(tree.root.right.left.black?).to eq(true)
        expect(tree.root.right.right.value).to eq(50)
        expect(tree.root.right.right.black?).to eq(true)
        expect(tree.root.right.right.right.value).to eq(60)
        expect(tree.root.right.right.right.red?).to eq(true)
      end
    end
  end

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
