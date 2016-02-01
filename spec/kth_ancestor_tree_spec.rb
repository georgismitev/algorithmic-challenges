# require 'spec_helper'

# describe KthAncestorTree do
#   describe 'test case 1' do
#     let(:tree) do
#       t = KthAncestorTree.new
#       t.add(2, 0)
#       t.add(5, 2)
#       t.add(3, 5)
#       t.add(7, 5)
#       t.add(9, 8)
#       t.add(8, 2)
#       t.add(6, 8)
#       t
#     end

#     it 'performs the operations successfully' do
#       tree.add(5, 15)
#       expect(tree.query(15, 2)).to eq(2)
#       tree.remove(3)
#       tree.add(15, 20)
#       tree.add(20, 13)
#       expect(tree.query(13, 4)).to eq(2)
#       expect(tree.query(13, 3)).to eq(5)
#       expect(tree.query(6, 10)).to eq(0)
#       expect(tree.query(11, 1)).to eq(0)
#       expect(tree.query(9, 1)).to eq(8)
#     end
#   end
# end
