require 'spec_helper'

describe HackerRank do
  describe '.sumar' do
    it { expect(HackerRank.sumar(0, 2, 4, 0)).to eq(1) }
    it { expect(HackerRank.sumar(2, 2, 5, 5)).to eq(2) }
    it { expect(HackerRank.sumar(1, 9, 8, 16)).to eq(6) }
    it { expect(HackerRank.sumar(21, -87, -81, -33)).to eq(5) }
    it { expect(HackerRank.sumar(24, 51, 96, 45)).to eq(5) }
  end
end
