require 'spec_helper'

describe MinHeap do
  let(:heap) { MinHeap.new }

  describe '#insert' do
    describe 'test case 1' do
      it 'successfully insert elements' do
        heap.insert(1)
        expect(heap.array).to eq([1])
        heap.insert(4)
        expect(heap.array).to eq([1, 4])
        heap.insert(6)
        expect(heap.array).to eq([1, 4, 6])
        heap.insert(2)
        expect(heap.array).to eq([1, 2, 6, 4])
        heap.insert(3)
        expect(heap.array).to eq([1, 2, 6, 4, 3])
        heap.insert(5)
        expect(heap.array).to eq([1, 2, 5, 4, 3, 6])
      end
    end

    describe 'test case 2' do
      it 'successfully insert elements' do
        heap.insert(6)
        expect(heap.array).to eq([6])
        heap.insert(7)
        expect(heap.array).to eq([6, 7])
        heap.insert(12)
        expect(heap.array).to eq([6, 7, 12])
        heap.insert(10)
        expect(heap.array).to eq([6, 7, 12, 10])
        heap.insert(15)
        expect(heap.array).to eq([6, 7, 12, 10, 15])
        heap.insert(17)
        expect(heap.array).to eq([6, 7, 12, 10, 15, 17])
        heap.insert(5)
        expect(heap.array).to eq([5, 7, 6, 10, 15, 17, 12])
      end
    end

    describe 'test case 3' do
      it 'successfully insert elements' do
        heap.insert(5)
        expect(heap.array).to eq([5])
        heap.insert(14)
        expect(heap.array).to eq([5, 14])
        heap.insert(23)
        expect(heap.array).to eq([5, 14, 23])
        heap.insert(32)
        expect(heap.array).to eq([5, 14, 23, 32])
        heap.insert(41)
        expect(heap.array).to eq([5, 14, 23, 32, 41])
        heap.insert(87)
        expect(heap.array).to eq([5, 14, 23, 32, 41, 87])
        heap.insert(90)
        expect(heap.array).to eq([5, 14, 23, 32, 41, 87, 90])
        heap.insert(50)
        expect(heap.array).to eq([5, 14, 23, 32, 41, 87, 90, 50])
        heap.insert(64)
        expect(heap.array).to eq([5, 14, 23, 32, 41, 87, 90, 50, 64])
        heap.insert(53)
        expect(heap.array).to eq([5, 14, 23, 32, 41, 87, 90, 50, 64, 53])
        heap.insert(43)
        expect(heap.array).to eq([5, 14, 23, 32, 41, 87, 90, 50, 64, 53, 43])
        heap.insert(18)
        expect(heap.array).to eq([5, 14, 18, 32, 41, 23, 90, 50, 64, 53, 43, 87])
        heap.insert(2)
        expect(heap.array).to eq([2, 14, 5, 32, 41, 18, 90, 50, 64, 53, 43, 87, 23])
      end
    end
  end

  describe '#delete_min' do
    describe 'test case 1' do
      it 'successfully remove elements' do
        heap.insert(1)
        heap.insert(2)
        heap.insert(4)
        heap.insert(5)
        heap.insert(3)
        heap.insert(6)
        expect(heap.array).to eq([1, 2, 4, 5, 3, 6])
        expect(heap.extract).to eq(1)
        expect(heap.array).to eq([2, 3, 4, 5, 6])
        expect(heap.extract).to eq(2)
        expect(heap.array).to eq([3, 5, 4, 6])
        expect(heap.extract).to eq(3)
        expect(heap.array).to eq([4, 5, 6])
        expect(heap.extract).to eq(4)
        expect(heap.array).to eq([5, 6])
        expect(heap.extract).to eq(5)
        expect(heap.array).to eq([6])
        expect(heap.extract).to eq(6)
        expect(heap.array).to eq([])
      end
    end

    describe 'test case 2' do
      it 'successfully remove elements' do
        heap.insert(5)
        heap.insert(14)
        heap.insert(23)
        heap.insert(32)
        heap.insert(41)
        heap.insert(87)
        heap.insert(90)
        heap.insert(50)
        heap.insert(64)
        heap.insert(53)
        heap.insert(43)
        expect(heap.array).to eq([5, 14, 23, 32, 41, 87, 90, 50, 64, 53, 43])
        expect(heap.extract).to eq(5)
        expect(heap.array).to eq([14, 32, 23, 43, 41, 87, 90, 50, 64, 53])
        expect(heap.extract).to eq(14)
        expect(heap.array).to eq([23, 32, 53, 43, 41, 87, 90, 50, 64])
        heap.insert(2)
        expect(heap.array).to eq([2, 23, 53, 43, 32, 87, 90, 50, 64, 41])
        expect(heap.extract).to eq(2)
        expect(heap.array).to eq([23, 32, 53, 43, 41, 87, 90, 50, 64])
      end
    end

    describe 'test case 3' do
      it 'successfully remove elements' do
        heap.insert(1000)
        expect(heap.array).to eq([1000])
        heap.insert(100)
        expect(heap.array).to eq([100, 1000])
        heap.insert(6)
        expect(heap.array).to eq([6, 1000, 100])
        expect(heap.extract).to eq(6)
        expect(heap.array).to eq([100, 1000])
        expect(heap.extract).to eq(100)
        expect(heap.array).to eq([1000])
        expect(heap.extract).to eq(1000)
        expect(heap.array).to eq([])
      end
    end
  end
end
