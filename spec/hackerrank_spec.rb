require 'spec_helper'

describe HackerRank do
  describe '.sumar' do
    it { expect(HackerRank.sumar(0, 2, 4, 0)).to eq(1) }
    it { expect(HackerRank.sumar(2, 2, 5, 5)).to eq(2) }
    it { expect(HackerRank.sumar(1, 9, 8, 16)).to eq(6) }
    it { expect(HackerRank.sumar(21, -87, -81, -33)).to eq(5)}
    it { expect(HackerRank.sumar(24, 51, 96, 45)).to eq(5)}
    it { expect(HackerRank.sumar(-27, 47, 11, 58)).to eq(0)}
    it { expect(HackerRank.sumar(-31, -43, -57, -70)).to eq(0)}
    it { expect(HackerRank.sumar(34, 7, 72, 15)).to eq(1)}
    it { expect(HackerRank.sumar(37, 3, -86, -27)).to eq(2)}
    it { expect(HackerRank.sumar(-41, -68, -33, -40)).to eq(3)}
    it { expect(HackerRank.sumar(-44, 64, 47, 52)).to eq(0)}
    it { expect(HackerRank.sumar(-47, 28, -62, -65)).to eq(2)}
    it { expect(HackerRank.sumar(50, -24, 9, -77)).to eq(0)}
    it { expect(HackerRank.sumar(54, 88, 23, 89)).to eq(0)}
    it { expect(HackerRank.sumar(-57, 84, -38, -2)).to eq(0)}
    it { expect(HackerRank.sumar(-60, -49, 84, 14)).to eq(8)}
    it { expect(HackerRank.sumar(-63, 45, 99, 27)).to eq(17)}
    it { expect(HackerRank.sumar(67, 41, -13, -71)).to eq(15)}
    it { expect(HackerRank.sumar(70, -5, 60, 84)).to eq(0)}
    it { expect(HackerRank.sumar(-73, 1, -75, -96)).to eq(0)}
    it { expect(HackerRank.sumar(-76, -65, -89, -9)).to eq(0)}
    it { expect(HackerRank.sumar(-80, -62, 4, 21)).to eq(0)}
    it { expect(HackerRank.sumar(83, 26, -50, -33)).to eq(0)}
    it { expect(HackerRank.sumar(86, -22, 65, -46)).to eq(2)}
    it { expect(HackerRank.sumar(-89, -86, 79, 58)).to eq(23)}
    it { expect(HackerRank.sumar(-93, 82, -26, -71)).to eq(0)}
    it { expect(HackerRank.sumar(-96, -47, 41, 83)).to eq(0)}
    it { expect(HackerRank.sumar(99, -43, -55, 96)).to eq(0)}
    it { expect(HackerRank.sumar(3, 39, -2, -40)).to eq(0)}
    it { expect(HackerRank.sumar(-6, -3, 16, 53)).to eq(1)}
    it { expect(HackerRank.sumar(-9, -99, -31, 65)).to eq(1)}
    it { expect(HackerRank.sumar(-12, 63, -77, -78)).to eq(0)}
    it { expect(HackerRank.sumar(16, -60, 92, 90)).to eq(1)}
    it { expect(HackerRank.sumar(19, -24, -7, -2)).to eq(1)}
    it { expect(HackerRank.sumar(-22, 20, 53, -15)).to eq(4)}
    it { expect(HackerRank.sumar(-25, -84, 68, 27)).to eq(2)}
    it { expect(HackerRank.sumar(-29, 80, -82, -40)).to eq(0)}
    it { expect(HackerRank.sumar(32, 44, 29, 52)).to eq(0)}
    it { expect(HackerRank.sumar(35, -41, -43, 97)).to eq(5)}
    it { expect(HackerRank.sumar(-38, 37, -58, -9)).to eq(1)}
    it { expect(HackerRank.sumar(-42, 1, 73, 22)).to eq(0)}
    it { expect(HackerRank.sumar(45, -97, -19, 34)).to eq(0)}
    it { expect(HackerRank.sumar(48, 61, -34, -47)).to eq(1)}
    it { expect(HackerRank.sumar(52, 57, 48, 59)).to eq(1)}
    it { expect(HackerRank.sumar(-55, -22, -95, -71)).to eq(0)}
    it { expect(HackerRank.sumar(-58, 18, 10, -84)).to eq(33)}
    it { expect(HackerRank.sumar(61, 82, 24, 96)).to eq(0)}
    it { expect(HackerRank.sumar(65, -78, -71, -9)).to eq(0)}
    it { expect(HackerRank.sumar(68, 42, 85, 21)).to eq(0)}
    it { expect(HackerRank.sumar(-71, 38, 0, 66)).to eq(0)}
    it { expect(HackerRank.sumar(-74, -35, -46, -78)).to eq(0)}
    it { expect(HackerRank.sumar(78, 99, 61, 91)).to eq(0)}
    it { expect(HackerRank.sumar(81, -95, -76, 3)).to eq(0)}
    it { expect(HackerRank.sumar(84, -59, -22, -15)).to eq(1)}
    it { expect(HackerRank.sumar(-87, 55, 37, 28)).to eq(0)}
    it { expect(HackerRank.sumar(-91, -19, -51, -40)).to eq(0)}
    it { expect(HackerRank.sumar(94, -16, 98, -53)).to eq(0)}
    it { expect(HackerRank.sumar(97, 80, 12, 65)).to eq(4)}
    it { expect(HackerRank.sumar(1, -76, -27, -78)).to eq(1)}
    it { expect(HackerRank.sumar(-4, -40, 42, 22)).to eq(1)}
    it { expect(HackerRank.sumar(-7, 36, -88, 35)).to eq(0)}
    it { expect(HackerRank.sumar(10, -33, -3, -47)).to eq(0)}
    it { expect(HackerRank.sumar(14, -97, 17, 60)).to eq(0)}
    it { expect(HackerRank.sumar(17, 93, -64, 72)).to eq(2)}
    it { expect(HackerRank.sumar(-20, -57, 78, -84)).to eq(0)}
    it { expect(HackerRank.sumar(-23, -53, 93, 97)).to eq(1)}
    it { expect(HackerRank.sumar(27, 17, -40, -9)).to eq(0)}
    it { expect(HackerRank.sumar(30, -14, 54, -22)).to eq(7)}
    it { expect(HackerRank.sumar(33, -78, 69, 34)).to eq(3)}
    it { expect(HackerRank.sumar(-36, 74, -15, -47)).to eq(0)}
    it { expect(HackerRank.sumar(-40, -38, 30, -91)).to eq(0)}
    it { expect(HackerRank.sumar(43, 34, -44, 4)).to eq(2)}
    it { expect(HackerRank.sumar(46, 30, -91, -16)).to eq(0)}
    it { expect(HackerRank.sumar(-50, -95, 6, 28)).to eq(0)}
    it { expect(HackerRank.sumar(-53, 91, -20, 41)).to eq(0)}
    it { expect(HackerRank.sumar(-56, 55, 35, -53)).to eq(0)}
    it { expect(HackerRank.sumar(59, -51, 81, 66)).to eq(0)}
    it { expect(HackerRank.sumar(63, 15, -96, -78)).to eq(2)}
    it { expect(HackerRank.sumar(-66, 11, 10, -91)).to eq(1)}
    it { expect(HackerRank.sumar(-69, -76, 57, 3)).to eq(0)}
    it { expect(HackerRank.sumar(-72, 72, -72, -48)).to eq(119)}
    it { expect(HackerRank.sumar(76, 36, 86, -60)).to eq(1)}
    it { expect(HackerRank.sumar(79, -32, -33, 73)).to eq(6)}
    it { expect(HackerRank.sumar(-82, 28, -47, -85)).to eq(0)}
    it { expect(HackerRank.sumar(-85, 92, 62, 97)).to eq(0)}
    it { expect(HackerRank.sumar(-89, -89, -8, 10)).to eq(8)}
    it { expect(HackerRank.sumar(92, 53, 23, -22)).to eq(2)}
    it { expect(HackerRank.sumar(95, -49, 38, 35)).to eq(2)}
    it { expect(HackerRank.sumar(-98, -13, -84, -47)).to eq(1)}
    it { expect(HackerRank.sumar(-2, 9, 99, -60)).to eq(0)}
    it { expect(HackerRank.sumar(-5, -73, 13, 72)).to eq(0)}
    it { expect(HackerRank.sumar(8, -70, -60, -17)).to eq(0)}
    it { expect(HackerRank.sumar(12, 34, 75, -29)).to eq(62)}
    it { expect(HackerRank.sumar(-15, -30, -89, 42)).to eq(1)}
    it { expect(HackerRank.sumar(-18, -26, -4, -54)).to eq(13)}
    it { expect(HackerRank.sumar(-21, 90, 50, 66)).to eq(0)}
    it { expect(HackerRank.sumar(25, -87, -65, 79)).to eq(1)}
    it { expect(HackerRank.sumar(28, -51, 79, -91)).to eq(0)}
    it { expect(HackerRank.sumar(-31, 47, 26, 4)).to eq(0)}
    it { expect(HackerRank.sumar(-34, -11, -41, -16)).to eq(0)}
    it { expect(HackerRank.sumar(-38, -7, 55, -29)).to eq(0)}
    it { expect(HackerRank.sumar(41, 71, -2, 73)).to eq(0)}
    it { expect(HackerRank.sumar(44, -68, -16, -86)).to eq(5)}
  end

  describe '.find_divisors' do
    it { expect(HackerRank.find_divisors(12)).to eq([1, 2, 3, 4, 6, 12])}
    it { expect(HackerRank.find_divisors(16)).to eq([1, 2, 4, 8, 16])}
    it { expect(HackerRank.find_divisors(2)).to eq([1, 2])}
    it { expect(HackerRank.find_divisors(4)).to eq([1, 2, 4])}
    it { expect(HackerRank.find_divisors(149997)).to eq([1, 3, 49999, 149997]) }
  end
end
