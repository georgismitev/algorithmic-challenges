require 'spec_helper'

describe KthAncestorTree do
  describe '#add' do
    it 'adds the nodes at the right place' do
      t = KthAncestorTree.new
      expect(t.root.value).to eq(0)
      expect(t.root.parent).to be nil
      t.add(2, 0)
      expect(t.root.children.keys).to eq([2])
      expect(t.tree_structure.keys).to match_array([0, 2])
      expect(t.tree_structure[2].parent).to eq(0)
      expect(t.tree_structure[2].children).to eq({})
      expect(t.tree_structure[0].children).to eq(2 => 1)
      t.add(5, 2)
      expect(t.root.children.keys).to eq([2])
      expect(t.tree_structure.keys).to match_array([0, 2, 5])
      expect(t.tree_structure[5].parent).to eq(2)
      expect(t.tree_structure[5].children).to eq({})
      expect(t.tree_structure[2].children).to eq(5 => 1)
      t.add(3, 5)
      expect(t.root.children.keys).to eq([2])
      expect(t.tree_structure.keys).to match_array([0, 2, 3, 5])
      expect(t.tree_structure[3].parent).to eq(5)
      expect(t.tree_structure[3].children).to eq({})
      expect(t.tree_structure[5].children).to eq(3 => 1)
      t.add(7, 5)
      expect(t.root.children.keys).to eq([2])
      expect(t.tree_structure.keys).to match_array([0, 2, 3, 5, 7])
      expect(t.tree_structure[7].parent).to eq(5)
      expect(t.tree_structure[7].children).to eq({})
      expect(t.tree_structure[5].children).to eq(3 => 1, 7 => 1)
      t.add(9, 8)
      expect(t.root.children.keys).to eq([2])
      expect(t.tree_structure.keys).to match_array([0, 2, 3, 5, 7, 8, 9])
      expect(t.tree_structure[8].parent).to be nil
      expect(t.tree_structure[8].children).to eq({9 => 1})
      expect(t.tree_structure[9].parent).to eq(8)
      expect(t.tree_structure[9].children).to eq({})
      t.add(8, 2)
      expect(t.root.children.keys).to eq([2])
      expect(t.tree_structure.keys).to match_array([0, 2, 3, 5, 7, 8, 9])
      expect(t.tree_structure[2].children).to eq(8 => 1, 5 => 1)
      expect(t.tree_structure[8].parent).to eq(2)
      expect(t.tree_structure[5].parent).to eq(2)
      expect(t.tree_structure[8].children).to eq(9 => 1)
      t.add(6, 8)
      expect(t.root.children.keys).to eq([2])
      expect(t.tree_structure.keys).to match_array([0, 2, 3, 5, 6, 7, 8, 9])
      expect(t.tree_structure[2].children).to eq(8 => 1, 5 => 1)
      expect(t.tree_structure[8].parent).to eq(2)
      expect(t.tree_structure[8].children).to eq(9 => 1, 6 => 1)
    end
  end

  describe '#remove' do
    context 'when we are removing a leaf' do
      it 'removes just that leaf' do
        t = KthAncestorTree.new
        t.add(2, 0)
        t.add(5, 2)
        t.add(3, 5)
        t.add(7, 5)
        t.add(9, 8)
        t.add(8, 2)
        t.add(6, 8)
        t.remove(6)
        expect(t.tree_structure.keys).to match_array([0, 2, 3, 5, 7, 8, 9])
        expect(t.tree_structure[6]).to be nil
      end
    end
  end

  describe 'test case 1' do
    let(:tree) do
      t = KthAncestorTree.new
      t.add(2, 0)
      t.add(5, 2)
      t.add(3, 5)
      t.add(7, 5)
      t.add(9, 8)
      t.add(8, 2)
      t.add(6, 8)
      t
    end

    it 'performs the operations successfully' do
      # def add(node, parent)
      # 0 Y X : X is added as a new leaf node whose parent is Y
      # 0 parent node
      tree.add(15, 5)
      expect(tree.query(15, 2)).to eq(2)
      tree.remove(3)
      tree.add(20, 15)
      tree.add(13, 20)
      expect(tree.query(13, 4)).to eq(2)
      expect(tree.query(13, 3)).to eq(5)
      expect(tree.query(6, 10)).to eq(0)
      expect(tree.query(11, 1)).to eq(0)
      expect(tree.query(9, 1)).to eq(8)
    end
  end

  describe 'test case 2' do
    let(:tree) do
      t = KthAncestorTree.new
      t.add(10000, 0)
      t
    end

    it 'performs the operations successfully' do
      tree.add(4, 10000)
      tree.remove(4)
      expect(tree.query(4, 1)).to eq(0)
    end
  end
end
