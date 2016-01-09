require 'spec_helper'

describe NextPermutation do
  describe '.of' do
    it { expect(NextPermutation.of('1234')).to eq('1243') }
    it { expect(NextPermutation.of('1243')).to eq('1324') }
    it { expect(NextPermutation.of('1324')).to eq('1342') }
    it { expect(NextPermutation.of('4123')).to eq('4132') }
    it { expect(NextPermutation.of('4321')).to eq(-1) }
    it { expect(NextPermutation.of('abcd')).to eq('abdc') }
    it { expect(NextPermutation.of('abdc')).to eq('acbd') }
    it { expect(NextPermutation.of('acbd')).to eq('acdb') }
    it { expect(NextPermutation.of('acdb')).to eq('adbc') }
    it { expect(NextPermutation.of('adbc')).to eq('adcb') }
    it { expect(NextPermutation.of('adcb')).to eq('bacd') }
    it { expect(NextPermutation.of('bacd')).to eq('badc') }
    it { expect(NextPermutation.of('badc')).to eq('bcad') }
    it { expect(NextPermutation.of('bcad')).to eq('bcda') }
    it { expect(NextPermutation.of('bcda')).to eq('bdac') }
    it { expect(NextPermutation.of('bdac')).to eq('bdca') }
    it { expect(NextPermutation.of('bdca')).to eq('cabd') }
    it { expect(NextPermutation.of('cabd')).to eq('cadb') }
    it { expect(NextPermutation.of('cadb')).to eq('cbad') }
    it { expect(NextPermutation.of('cbad')).to eq('cbda') }
    it { expect(NextPermutation.of('cbda')).to eq('cdab') }
    it { expect(NextPermutation.of('cdab')).to eq('cdba') }
    it { expect(NextPermutation.of('cdba')).to eq('dabc') }
    it { expect(NextPermutation.of('dabc')).to eq('dacb') }
    it { expect(NextPermutation.of('dacb')).to eq('dbac') }
    it { expect(NextPermutation.of('dbac')).to eq('dbca') }
    it { expect(NextPermutation.of('dbca')).to eq('dcab') }
    it { expect(NextPermutation.of('dcab')).to eq('dcba') }
    it { expect(NextPermutation.of('a')).to eq(-1) }
  end
end
