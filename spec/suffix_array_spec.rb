require 'spec_helper'

describe 'suffix array test cases' do
  describe 'test cases 0' do
    let(:array_1) { [0] }
    it { expect(CreateSuffixArray.default('a')).to eq(array_1) }
    it { expect(CreateSuffixArray.with_tree('a')).to eq(array_1) }

    let(:array_2) { [0, 1] }
    it { expect(CreateSuffixArray.default('ab')).to eq(array_2) }
    it { expect(CreateSuffixArray.with_tree('ab')).to eq(array_2) }

    let(:array_3) { [0, 1, 2] }
    it { expect(CreateSuffixArray.default('abc')).to eq(array_3) }
    it { expect(CreateSuffixArray.with_tree('abc')).to eq(array_3) }

    let(:array_4) { [3, 0, 1, 2] }
    it { expect(CreateSuffixArray.default('abca')).to eq(array_4) }
    it { expect(CreateSuffixArray.with_tree('abca')).to eq(array_4) }
  end

  describe 'test case 1' do
    let(:array) { [5, 3, 1, 0, 4, 2] }
    it { expect(CreateSuffixArray.default('banana')).to eq(array) }
    it { expect(CreateSuffixArray.with_sorting('BANANA')).to eq(array) }
    it { expect(CreateSuffixArray.with_tree('BANANA')).to eq(array) }
  end

  describe 'test case 2' do
    let(:array) { [1, 2, 0, 3] }
    it { expect(CreateSuffixArray.default('jack')).to eq(array) }
    it { expect(CreateSuffixArray.with_sorting('JACK')).to eq(array) }
    it { expect(CreateSuffixArray.with_tree('JACK')).to eq(array) }
  end

  describe 'test case 3' do
    let(:array) { [1, 0, 4, 3, 5, 2, 6] }
    it { expect(CreateSuffixArray.default('daniels')).to eq(array) }
    it { expect(CreateSuffixArray.with_sorting('DANIELS')).to eq(array) }
    it { expect(CreateSuffixArray.with_tree('DANIELS')).to eq(array) }
  end

  describe 'test case 5' do
    let(:array) { [0, 2, 4, 5, 6, 1, 3] }
    it { expect(CreateSuffixArray.default('bobocel')).to eq(array) }
    it { expect(CreateSuffixArray.with_sorting('BOBOCEL')).to eq(array) }
    it { expect(CreateSuffixArray.with_tree('BOBOCEL')).to eq(array) }
  end

  describe 'test case 6' do
    let(:array) { [4, 0, 3, 6, 2, 5, 1] }
    it { expect(CreateSuffixArray.default('attcatg')).to eq(array) }
    it { expect(CreateSuffixArray.with_sorting('ATTCATG')).to eq(array) }
    it { expect(CreateSuffixArray.with_tree('ATTCATG')).to eq(array) }
  end

  describe 'test case 7' do
    let(:array) { [5, 1, 4, 0, 6, 3, 2] }
    it { expect(CreateSuffixArray.default('cattcat')).to eq(array) }
    it { expect(CreateSuffixArray.with_sorting('CATTCAT')).to eq(array) }
    it { expect(CreateSuffixArray.with_tree('CATTCAT')).to eq(array) }
  end

  describe 'test case 8' do
    let(:array) { [4, 1, 5, 3, 0, 2] }
    it { expect(CreateSuffixArray.default('daddad')).to eq(array) }
    it { expect(CreateSuffixArray.with_sorting('DADDAD')).to eq(array) }
    it { expect(CreateSuffixArray.with_tree('DADDAD')).to eq(array) }
  end

  describe 'test case 9' do
    let(:array) { [0, 6, 3, 1, 7, 4, 2, 8, 9, 5] }
    it { expect(CreateSuffixArray.default('abcabxabcd')).to eq(array) }
    it { expect(CreateSuffixArray.with_tree('abcabxabcd')).to eq(array) }
  end

  describe 'test case 10' do
    let(:array) { [8, 1, 9, 0, 4, 3, 7, 10, 5, 2, 6] }
    it { expect(CreateSuffixArray.default('danielsjack')).to eq(array) }
    it { expect(CreateSuffixArray.with_sorting('DANIELSJACK')).to eq(array) }
    it { expect(CreateSuffixArray.with_tree('DANIELSJACK')).to eq(array) }
  end

  describe 'test case 11' do
    let(:array) { [16, 15, 2, 10, 5, 13, 0, 8, 3, 11, 6, 14, 1, 9, 4, 12, 7] }
    it { expect(CreateSuffixArray.default('YZYYZYYZYZYYZYZYY')).to eq(array) }
    it { expect(CreateSuffixArray.with_sorting('YZYYZYYZYZYYZYZYY')).to eq(array) }
    it { expect(CreateSuffixArray.with_tree('YZYYZYYZYZYYZYZYY')).to eq(array) }
  end
end
