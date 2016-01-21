require 'spec_helper'

describe SaveHumanity do
  describe '.bad_match_table' do
    let(:bad_match_table) { SaveHumanity.bad_match_table(pattern, k) }

    describe 'test case 1' do
      let(:pattern) { 'GCAGAGAG' }
      let(:k) { 1 }
      let(:expected_table) do
        [
          {'A' => 1, 'C' => 6, 'G' => 2, '*' => 8 },
          {'A' => 2, 'C' => 5, 'G' => 1, '*' => 7 }
        ]
      end
      it { expect(bad_match_table).to eq(expected_table) }
    end

    describe 'test case 2' do
      let(:pattern) { 'ACGT' }
      let(:k) { 1 }
      let(:expected_table) do
        [
          { 'A' => 3, 'C' => 2, 'G' => 1, '*' => 4 },
          { 'A' => 2, 'C' => 1, '*' => 3}
        ]
      end

      it { expect(bad_match_table).to eq(expected_table) }
    end

    describe 'test case 3' do
      let(:pattern) { 'tooth' }
      let(:text) { 'trusthardtoothbrushes' }
      let(:k) { 0 }
      it { expect(bad_match_table).to eq([{'t' => 1, 'o' => 2, '*' => 5}]) }
    end

    describe 'test case 4' do
      let(:pattern) { 'hello' }
      let(:text) { 'world' }
      let(:k) { 0 }
      let(:expected_table) { [{'e' => 3, 'h' => 4, 'l' => 1, '*' => 5}] }
      it { expect(bad_match_table).to eq(expected_table) }
    end

    describe 'test case 5' do
      let(:pattern) { 'ana' }
      let(:text) { 'banananab' }
      let(:k) { 0 }
      it { expect(bad_match_table).to eq([{'a' => 2, 'n' => 1, '*' => 3}]) }
    end

    describe 'test case 6' do
      let(:pattern) { 'teammast' }
      let(:text) { 'bigsingleteammast' }
      let(:k) { 0 }
      let(:expected_table) do
        [{'t' => 7, 'e' => 6, 'a' => 2, 'm' => 3, 's' => 1, '*' => 8}]
      end
      it { expect(bad_match_table).to eq(expected_table) }
    end

    describe 'test case 7' do
      let(:pattern) { 'ant' }
      let(:text) { 'iamanantelope' }
      let(:k) { 0 }
      it { expect(bad_match_table).to eq([{'a' => 2, 'n' => 1, '*' => 3}]) }
    end

    describe 'test case 8' do
      let(:pattern) { 'TRUTH' }
      let(:k) { 0 }
      let(:expected_table) { [{'T' => 1, 'R' => 3, 'U' => 2, '*' => 5}] }
      it { expect(bad_match_table).to eq(expected_table) }
    end

    describe 'test case 9' do
      let(:pattern) { 'AAGTCGTAAC' }
      let(:k) { 2 }
      let(:expected_table) do
        [
          {'A' => 1, 'C' => 5, 'G' => 4, 'T' => 3, '*' => 10},
          {'A' => 1, 'C' => 4, 'G' => 3, 'T' => 2, '*' => 9},
          {'A' => 6, 'C' => 3, 'G' => 2, 'T' => 1, '*' => 8}
        ]
      end
      it { expect(bad_match_table).to eq(expected_table) }
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
    it { expect(SaveHumanity.find('GCATCGCAGAGAGTATGCAGAGCG', 'GCAGAGAG')).to eq([5, 16]) }
    it { expect(SaveHumanity.find('aabaab', 'bababa')).to eq([]) }
    it { expect(SaveHumanity.find('bbabaaaaabbb', 'baaaaabababb')).to eq([]) }
    it { expect(SaveHumanity.find('bababa', 'babba')).to eq([]) }
    it { expect(SaveHumanity.find('aa', 'aa')).to eq([0]) }
    it { expect(SaveHumanity.find('bbaabbbabbabbaabbaa', 'babaabbabbbbaabaab')).to eq([]) }
    it { expect(SaveHumanity.find('bababbb', 'ababbb')).to eq([1]) }
    it { expect(SaveHumanity.find('baaababb', 'bbba')).to eq([]) }
    it { expect(SaveHumanity.find('aababab', 'abbb')).to eq([1, 3]) }
    it { expect(SaveHumanity.find('aaaaabbaababaaaababaaabaaaba', 'babaaaabbabbbbababab')).to eq([]) }
    it { expect(SaveHumanity.find('abaaab', 'ba')).to eq([1, 2, 3]) }
  end
end
