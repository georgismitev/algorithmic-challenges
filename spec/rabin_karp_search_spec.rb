require 'spec_helper'

describe RabinKarpSearch do
  describe '#search' do
    describe 'test case 1' do
      let(:pattern) { [1, 2, 1] }
      let(:array) { [1, 2, 1, 2, 3, 0, 0] }
      it { expect(RabinKarpSearch.new(pattern, array).find_pattern).to be true }
    end

    describe 'test case 2' do
      let(:pattern) { [1, 2, 1] }
      let(:array) { [3, 3, 3, 1, 2, 1, 0] }
      it { expect(RabinKarpSearch.new(pattern, array).find_pattern).to be true }
    end

    describe 'test case 3' do
      let(:pattern) { [1, 2, 0] }
      let(:array) { [1, 2, 1, 2, 3, 0, 0] }
      it { expect(RabinKarpSearch.new(pattern, array).find_pattern).to be false }
    end

    describe 'test case 4' do
      let(:pattern) { [1, 2, 3] }
      let(:array) { [1, 2, 1, 2, 3, 0, 0] }
      it { expect(RabinKarpSearch.new(pattern, array).find_pattern).to be true }
    end

    describe 'test case 3' do
      let(:pattern) { [2, 1, 2] }
      let(:array) { [1, 2, 1, 4, 3, 2, 1] }
      it { expect(RabinKarpSearch.new(pattern, array).find_pattern).to be false }
    end
  end
end
