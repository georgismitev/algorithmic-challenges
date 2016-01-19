require 'spec_helper'

describe BoyerMooreHorspool do
  let(:bad_match_table) { BoyerMooreHorspool.bad_match_table(pattern) }

  describe 'test case 1' do
    let(:pattern) { 'tooth' }
    let(:text) { 'trusthardtoothbrushes' }

    it 'returns the bad match table' do
      expect(bad_match_table).to eq('t' => 1, 'o' => 2, 'h' => 5)
      expect(bad_match_table['non-existing-key']).to eq(5)
    end

    it { expect(BoyerMooreHorspool.find(pattern, text)).to eq([9]) }
  end

  describe 'test case 2' do
    let(:pattern) { 'hello' }
    let(:text) { 'world' }

    it 'returns the bad match table' do
      expect(bad_match_table).to eq('e' => 3, 'h' => 4, 'l' => 1, 'o' => 5)
      expect(bad_match_table['non-existing-key']).to eq(5)
    end

    it { expect(BoyerMooreHorspool.find(pattern, text)).to eq([]) }
  end

  describe 'test case 3' do
    let(:pattern) { 'ana' }
    let(:text) { 'banananab' }

    it 'returns the bad match table' do
      expect(bad_match_table).to eq('a' => 3, 'n' => 1)
      expect(bad_match_table['non-existing-key']).to eq(3)
    end

    it { expect(BoyerMooreHorspool.find(pattern, text)).to eq([1, 3, 5]) }
  end

  describe 'test case 4' do
    let(:pattern) { 'teammast' }
    let(:text) { 'bigsingleteammast' }

    it 'returns the bad match table' do
      expect(bad_match_table).to eq('t' => 8, 'e' => 6, 'a' => 2, 'm' => 3, 's' => 1)
      expect(bad_match_table['non-existing-key']).to eq(8)
    end

    it { expect(BoyerMooreHorspool.find(pattern, text)).to eq([9]) }
  end

  describe 'test case 4' do
    let(:pattern) { 'ant' }
    let(:text) { 'iamanantelope' }

    it 'returns the bad match table' do
      expect(bad_match_table).to eq('a' => 2, 'n' => 1, 't' => 3)
      expect(bad_match_table['non-existing-key']).to eq(3)
    end

    it { expect(BoyerMooreHorspool.find(pattern, text)).to eq([5]) }
  end
end
