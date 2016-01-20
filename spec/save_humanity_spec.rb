require 'spec_helper'

describe SaveHumanity do
  describe '.bad_match_table' do
    let(:bad_match_table) { SaveHumanity.bad_match_table(pattern, k) }

    describe 'test case 1' do
      let(:pattern) { 'GCAGAGAG' }
      let(:k) { 1 }
      let(:expected_table) do
        [
          {
            'A' => 1,
            'C' => 6,
            'G' => 2
          },
          {
            'A' => 2,
            'C' => 5,
            'G' => 1
          }
        ]
      end

      it 'returns the bad match table' do
        expect(bad_match_table).to eq(expected_table)
        expect(bad_match_table[0]['non-existing-key']).to eq(8)
        expect(bad_match_table[1]['non-existing-key']).to eq(8)
      end
    end

    describe 'test case 2' do
      let(:pattern) { 'ACGT' }
      let(:k) { 1 }
      let(:expected_table) do
        [
          {
            'A' => 3,
            'C' => 1,
            'G' => 2,
            'T' => 4
          },
          {
            'A' => 2,
            'C' => 3,
            'G' => 1
          }
        ]
      end

      it 'returns the bad match table' do
        bad_match_table = SaveHumanity.bad_match_table(pattern, k)
        expect(bad_match_table).to eq(expected_table)
        expect(bad_match_table[0]['non-existing-key']).to eq(4)
        expect(bad_match_table[1]['non-existing-key']).to eq(4)
      end
    end

    describe 'test case 3' do
      let(:pattern) { 'tooth' }
      let(:text) { 'trusthardtoothbrushes' }
      let(:k) { 0 }

      it 'returns the bad match table' do
        expect(bad_match_table).to eq([{'t' => 1, 'o' => 2, 'h' => 5}])
        expect(bad_match_table[0]['non-existing-key']).to eq(5)
      end
    end

    describe 'test case 4' do
      let(:pattern) { 'hello' }
      let(:text) { 'world' }
      let(:k) { 0 }

      it 'returns the bad match table' do
        expect(bad_match_table).to eq([{'e' => 3, 'h' => 4, 'l' => 1, 'o' => 5}])
        expect(bad_match_table[0]['non-existing-key']).to eq(5)
      end
    end

    describe 'test case 5' do
      let(:pattern) { 'ana' }
      let(:text) { 'banananab' }
      let(:k) { 0 }

      it 'returns the bad match table' do
        expect(bad_match_table).to eq([{'a' => 3, 'n' => 1}])
        expect(bad_match_table[0]['non-existing-key']).to eq(3)
      end
    end

    describe 'test case 6' do
      let(:pattern) { 'teammast' }
      let(:text) { 'bigsingleteammast' }
      let(:k) { 0 }

      it 'returns the bad match table' do
        expect(bad_match_table).to eq([{'t' => 8, 'e' => 6, 'a' => 2, 'm' => 3, 's' => 1}])
        expect(bad_match_table[0]['non-existing-key']).to eq(8)
      end
    end

    describe 'test case 7' do
      let(:pattern) { 'ant' }
      let(:text) { 'iamanantelope' }
      let(:k) { 0 }

      it 'returns the bad match table' do
        expect(bad_match_table).to eq([{'a' => 2, 'n' => 1, 't' => 3}])
        expect(bad_match_table[0]['non-existing-key']).to eq(3)
      end
    end
  end

  describe '.find' do
    it { expect(SaveHumanity.find('abbab', 'ba')).to eq([1, 2]) }
    it { expect(SaveHumanity.find('abbababb', 'ba')).to eq([1, 2, 4, 6]) }
    it { expect(SaveHumanity.find('hello', 'world')).to eq([]) }
    it { expect(SaveHumanity.find('banana', 'nan')).to eq([0, 2]) }
    it { expect(SaveHumanity.find('aabaa', 'aaaab')).to eq([]) }
    it { expect(SaveHumanity.find('bbabbaaaabababbaaba', 'aaababbaaaaaa')).to eq([]) }
    it { expect(SaveHumanity.find('babbbabaa', 'bbaba')).to eq([3]) }
    it { expect(SaveHumanity.find('baaaaababbaa', 'abbab')).to eq([4, 7]) }
    it { expect(SaveHumanity.find('ababbaabbbabaababaaaabaa', 'aaabaababbbabbabbaababbb')).to eq([]) }
    it { expect(SaveHumanity.find('aaaabaaaaabbaaaa', 'aa')).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 13, 14]) }
    it { expect(SaveHumanity.find('abababaaaaabaaaaba', 'ababba')).to eq([2]) }
    it { expect(SaveHumanity.find('aabbbababaabaaa', 'baabababbaaaaa')).to eq([]) }
    it { expect(SaveHumanity.find('bababa', 'a')).to eq([0, 1, 2, 3, 4, 5]) }
    it { expect(SaveHumanity.find('bbbbabaaababaabbaab', 'baaaaab')).to eq([3, 5]) }
  end
end
