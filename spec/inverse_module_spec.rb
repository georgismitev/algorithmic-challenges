require 'spec_helper'

describe InverseModule do
  describe '.of' do
    it { expect(InverseModule.of(17, 43)).to eq(38) }
    it { expect(InverseModule.of(3, 7)).to eq(5) }
    it { expect(InverseModule.of(2, 6)).to be nil }
    it { expect(InverseModule.of(134333, 553409)).to eq(519916) }
    it { expect(InverseModule.of(366974, 828680)).to be nil }
    it { expect(InverseModule.of(544882, 825617)).to be nil }
    it { expect(InverseModule.of(474666, 108408)).to be nil }
    it { expect(InverseModule.of(509757, 614922)).to be nil }
    it { expect(InverseModule.of(663644, 680882)).to be nil }
    it { expect(InverseModule.of(675721, 471481)).to eq(267318) }
    it { expect(InverseModule.of(454574, 985749)).to eq(512660) }
    it { expect(InverseModule.of(134333, 1000000007)).to eq(909441469) }
    it { expect(InverseModule.of(366974, 1000000007)).to eq(601255134) }
    it { expect(InverseModule.of(544882, 1000000007)).to eq(748941978) }
    it { expect(InverseModule.of(474666, 1000000007)).to eq(168727064) }
    it { expect(InverseModule.of(509757, 1000000007)).to eq(338316102) }
    it { expect(InverseModule.of(663644, 1000000007)).to eq(69936593) }
    it { expect(InverseModule.of(675721, 1000000007)).to eq(145662190) }
    it { expect(InverseModule.of(454574, 1000000007)).to eq(95520202) }
  end
end
