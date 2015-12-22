require 'spec_helper'

describe 'suffix array test cases' do
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
    let(:array) { [4, 1, 5, 3, 0, 2] }
    it { expect(CreateSuffixArray.default('abcabxabcd')).to eq(array) }
    it { expect(CreateSuffixArray.with_tree(string)).to eq(array) }
  end

  describe 'test case 10' do
    let(:array) { [8, 1, 9, 0, 4, 3, 7, 10, 5, 2, 6] }
    it { expect(CreateSuffixArray.default('danielsjack')).to eq(array) }
    it { expect(CreateSuffixArray.with_sorting('DANIELSJACK')).to eq(array) }
    it { expect(CreateSuffixArray.with_tree('DANIELSJACK')).to eq(array) }
  end
end
