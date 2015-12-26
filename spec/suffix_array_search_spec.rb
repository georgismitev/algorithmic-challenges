require 'spec_helper'

describe SuffixArraySearch do
  describe '.substring?' do
    it { expect(SuffixArraySearch.substring?('at', 'cattcat')).to be true }
    it { expect(SuffixArraySearch.substring?('a', 'cattcat')).to be true }
    it { expect(SuffixArraySearch.substring?('cata', 'cattcat')).to be false }
    it { expect(SuffixArraySearch.substring?('aca', 'acaaacatat')).to be true }
  end

  describe '.occurrences' do
    it { expect(SuffixArraySearch.number_of_occurrences('at', 'cattcat')).to eq(2) }
    it { expect(SuffixArraySearch.number_of_occurrences('a', 'cattcat')).to eq(2) }
    it { expect(SuffixArraySearch.number_of_occurrences('cata', 'cattcat')).to eq(0) }
    it { expect(SuffixArraySearch.number_of_occurrences('aca', 'acaaacatat')).to eq(2) }
    it { expect(SuffixArraySearch.number_of_occurrences('acat', 'acaaacatat')).to eq(1) }
  end
end
