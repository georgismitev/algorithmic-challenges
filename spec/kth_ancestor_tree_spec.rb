require 'spec_helper'

describe KthAncestorTree do
  describe '#initial_add' do
    it 'adds the nodes at the right place' do
      t = KthAncestorTree.new(7)
      expect(t.root.value).to eq(0)
      expect(t.root.parent).to be nil
      expect(t.initial_size).to eq(7)
      t.initial_add(2, 0)
      expect(t.root.children.keys).to eq([2])
      expect(t.tree_structure.keys).to match_array([0, 2])
      expect(t.tree_structure[2].parent).to eq(0)
      expect(t.tree_structure[2].children).to eq({})
      expect(t.tree_structure[0].children).to eq(2 => 1)
      expect(t.jump_pointers[2][0]).to eq(0)
      t.initial_add(5, 2)
      expect(t.root.children.keys).to eq([2])
      expect(t.tree_structure.keys).to match_array([0, 2, 5])
      expect(t.tree_structure[5].parent).to eq(2)
      expect(t.tree_structure[5].children).to eq({})
      expect(t.tree_structure[2].children).to eq(5 => 1)
      expect(t.jump_pointers[5][0]).to eq(2)
      t.initial_add(3, 5)
      expect(t.root.children.keys).to eq([2])
      expect(t.tree_structure.keys).to match_array([0, 2, 3, 5])
      expect(t.tree_structure[3].parent).to eq(5)
      expect(t.tree_structure[3].children).to eq({})
      expect(t.tree_structure[5].children).to eq(3 => 1)
      expect(t.jump_pointers[3][0]).to eq(5)
      t.initial_add(7, 5)
      expect(t.root.children.keys).to eq([2])
      expect(t.tree_structure.keys).to match_array([0, 2, 3, 5, 7])
      expect(t.tree_structure[7].parent).to eq(5)
      expect(t.tree_structure[7].children).to eq({})
      expect(t.tree_structure[5].children).to eq(3 => 1, 7 => 1)
      expect(t.jump_pointers[7][0]).to eq(5)
      t.initial_add(9, 8)
      expect(t.root.children.keys).to eq([2])
      expect(t.tree_structure.keys).to match_array([0, 2, 3, 5, 7, 8, 9])
      expect(t.tree_structure[8].parent).to be nil
      expect(t.tree_structure[8].children).to eq({9 => 1})
      expect(t.tree_structure[9].parent).to eq(8)
      expect(t.tree_structure[9].children).to eq({})
      expect(t.jump_pointers[9][0]).to eq(8)
      t.initial_add(8, 2)
      expect(t.root.children.keys).to eq([2])
      expect(t.tree_structure.keys).to match_array([0, 2, 3, 5, 7, 8, 9])
      expect(t.tree_structure[2].children).to eq(8 => 1, 5 => 1)
      expect(t.tree_structure[8].parent).to eq(2)
      expect(t.tree_structure[5].parent).to eq(2)
      expect(t.tree_structure[8].children).to eq(9 => 1)
      expect(t.jump_pointers[8][0]).to eq(2)
      t.initial_add(6, 8)
      expect(t.root.children.keys).to eq([2])
      expect(t.tree_structure.keys).to match_array([0, 2, 3, 5, 6, 7, 8, 9])
      expect(t.tree_structure[2].children).to eq(8 => 1, 5 => 1)
      expect(t.tree_structure[8].parent).to eq(2)
      expect(t.tree_structure[6].parent).to eq(8)
      expect(t.tree_structure[8].children).to eq(9 => 1, 6 => 1)
      expect(t.jump_pointers[6][0]).to eq(8)
      t.build_jump_pointers
      expect(t.jump_pointers[2][0..2]).to eq([0, 0, 0])
      expect(t.jump_pointers[3][0..2]).to eq([5, 2, 0])
      expect(t.jump_pointers[5][0..2]).to eq([2, 0, 0])
      expect(t.jump_pointers[6][0..2]).to eq([8, 2, 0])
      expect(t.jump_pointers[7][0..2]).to eq([5, 2, 0])
      expect(t.jump_pointers[8][0..2]).to eq([2, 0, 0])
      expect(t.jump_pointers[9][0..2]).to eq([8, 2, 0])
      t.operation_add(15, 5)
      expect(t.tree_structure[15].parent).to eq(5)
      expect(t.jump_pointers[2][0..2]).to eq([0, 0, 0])
      expect(t.jump_pointers[3][0..2]).to eq([5, 2, 0])
      expect(t.jump_pointers[5][0..2]).to eq([2, 0, 0])
      expect(t.jump_pointers[6][0..2]).to eq([8, 2, 0])
      expect(t.jump_pointers[7][0..2]).to eq([5, 2, 0])
      expect(t.jump_pointers[8][0..2]).to eq([2, 0, 0])
      expect(t.jump_pointers[9][0..2]).to eq([8, 2, 0])
      expect(t.jump_pointers[15][0..2]).to eq([5, 2, 0])
      t.remove(3)
      expect(t.jump_pointers[3][0..2]).to eq([0, 0, 0])
      t.operation_add(20, 15)
      expect(t.tree_structure[20].parent).to eq(15)
      expect(t.jump_pointers[2][0..2]).to eq([0, 0, 0])
      expect(t.jump_pointers[3][0..2]).to eq([0, 0, 0])
      expect(t.jump_pointers[5][0..2]).to eq([2, 0, 0])
      expect(t.jump_pointers[6][0..2]).to eq([8, 2, 0])
      expect(t.jump_pointers[7][0..2]).to eq([5, 2, 0])
      expect(t.jump_pointers[8][0..2]).to eq([2, 0, 0])
      expect(t.jump_pointers[9][0..2]).to eq([8, 2, 0])
      expect(t.jump_pointers[15][0..2]).to eq([5, 2, 0])
      expect(t.jump_pointers[20][0..2]).to eq([15, 5, 0])
      t.operation_add(13, 20)
      expect(t.jump_pointers[2][0..2]).to eq([0, 0, 0])
      expect(t.jump_pointers[3][0..2]).to eq([0, 0, 0])
      expect(t.jump_pointers[5][0..2]).to eq([2, 0, 0])
      expect(t.jump_pointers[6][0..2]).to eq([8, 2, 0])
      expect(t.jump_pointers[7][0..2]).to eq([5, 2, 0])
      expect(t.jump_pointers[8][0..2]).to eq([2, 0, 0])
      expect(t.jump_pointers[9][0..2]).to eq([8, 2, 0])
      expect(t.jump_pointers[15][0..2]).to eq([5, 2, 0])
      expect(t.jump_pointers[13][0..2]).to eq([20, 15, 2])
      expect(t.jump_pointers[20][0..2]).to eq([15, 5, 0])
    end
  end

  describe '#remove' do
    context 'when we are removing a leaf' do
      it 'removes just that leaf' do
        t = KthAncestorTree.new(7)
        t.initial_add(2, 0)
        t.initial_add(5, 2)
        t.initial_add(3, 5)
        t.initial_add(7, 5)
        t.initial_add(9, 8)
        t.initial_add(8, 2)
        t.initial_add(6, 8)
        t.build_jump_pointers
        t.remove(6)
        expect(t.tree_structure.keys).to match_array([0, 2, 3, 5, 7, 8, 9])
        expect(t.tree_structure[6]).to be nil
      end
    end
  end

  describe 'test case 1' do
    let(:tree) do
      t = KthAncestorTree.new(7)
      t.initial_add(2, 0)
      t.initial_add(5, 2)
      t.initial_add(3, 5)
      t.initial_add(7, 5)
      t.initial_add(9, 8)
      t.initial_add(8, 2)
      t.initial_add(6, 8)
      t.build_jump_pointers
      t
    end

    it 'performs the operations successfully' do
      # def operation_add(node, parent)
      # 0 Y X : X is added as a new leaf node whose parent is Y
      # 0 parent node
      tree.operation_add(15, 5)
      expect(tree.query(15, 2)).to eq(2)
      tree.remove(3)
      tree.operation_add(20, 15)
      tree.operation_add(13, 20)
      expect(tree.query(13, 4)).to eq(2)
      expect(tree.query(13, 3)).to eq(5)
      expect(tree.query(6, 10)).to eq(0)
      expect(tree.query(11, 1)).to eq(0)
      expect(tree.query(9, 1)).to eq(8)
    end
  end

  describe 'test case 2' do
    let(:tree) do
      t = KthAncestorTree.new(1)
      t.initial_add(10000, 0)
      t.build_jump_pointers
      t
    end

    it 'performs the operations successfully' do
      tree.operation_add(4, 10000)
      tree.remove(4)
      expect(tree.query(4, 1)).to eq(0)
    end
  end

  describe 'test case 3 (large one)' do
    let(:tree) do
      t = KthAncestorTree.new(33)
      t.initial_add(38353, 0)
      t.initial_add(66877, 38353)
      t.initial_add(18393, 66877)
      t.initial_add(43665, 18393)
      t.initial_add(49810, 43665)
      t.initial_add(90384, 49810)
      t.initial_add(70890, 90384)
      t.initial_add(65140, 70890)
      t.initial_add(88590, 65140)
      t.initial_add(50572, 88590)
      t.initial_add(56293, 50572)
      t.initial_add(99277, 56293)
      t.initial_add(51959, 99277)
      t.initial_add(81510, 51959)
      t.initial_add(46395, 81510)
      t.initial_add(93830, 46395)
      t.initial_add(76655, 93830)
      t.initial_add(37944, 76655)
      t.initial_add(50627, 37944)
      t.initial_add(29053, 50627)
      t.initial_add(27530, 29053)
      t.initial_add(76199, 27530)
      t.initial_add(40738, 76199)
      t.initial_add(37622, 40738)
      t.initial_add(41071, 37622)
      t.initial_add(7880, 41071)
      t.initial_add(4180, 7880)
      t.initial_add(37849, 4180)
      t.initial_add(12179, 37849)
      t.initial_add(12474, 12179)
      t.initial_add(68226, 12474)
      t.initial_add(7269, 68226)
      t.initial_add(22890, 7269)
      t.build_jump_pointers
      t
    end

    it 'performs the operations successfully' do
      tree.remove(22890)
      tree.remove(7269)
      expect(tree.query(99970, 58526)).to eq(0)
      tree.operation_add(39469, 41071)
      tree.operation_add(85103, 88590)
      tree.remove(68226)
      expect(tree.query(49810, 2)).to eq(18393)
      tree.operation_add(86856, 85103)
      expect(tree.query(68226, 15)).to eq(0)
      tree.remove(12474)
      expect(tree.query(41071, 8)).to eq(76655)
      tree.operation_add(11275, 81510)
      expect(tree.query(12474, 31845)).to eq(0)
      tree.remove(11275)
      expect(tree.query(46395, 12)).to eq(18393)
      tree.remove(86856)
      tree.operation_add(5808, 43665)
      tree.operation_add(67922, 4180)
      tree.operation_add(7370, 4180)
      tree.operation_add(92032, 38353)
      expect(tree.query(41071, 18)).to eq(70890)
      tree.operation_add(76639, 51959)
      tree.operation_add(83131, 38353)
      expect(tree.query(92032, 2)).to eq(0)
    end
  end
end
