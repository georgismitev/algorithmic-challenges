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

  describe '.sherlock_permutation' do
		it { expect(HackerRank.sherlock_permutation(1, 1)).to eq(1) }
		it { expect(HackerRank.sherlock_permutation(1, 2)).to eq(2) }
		it { expect(HackerRank.sherlock_permutation(1, 3)).to eq(3) }
		it { expect(HackerRank.sherlock_permutation(1, 4)).to eq(4) }
		it { expect(HackerRank.sherlock_permutation(1, 5)).to eq(5) }
		it { expect(HackerRank.sherlock_permutation(1, 6)).to eq(6) }
		it { expect(HackerRank.sherlock_permutation(1, 7)).to eq(7) }
		it { expect(HackerRank.sherlock_permutation(1, 8)).to eq(8) }
		it { expect(HackerRank.sherlock_permutation(1, 9)).to eq(9) }
		it { expect(HackerRank.sherlock_permutation(1, 10)).to eq(10) }
		it { expect(HackerRank.sherlock_permutation(2, 1)).to eq(1) }
		it { expect(HackerRank.sherlock_permutation(2, 2)).to eq(3) }
		it { expect(HackerRank.sherlock_permutation(2, 3)).to eq(6) }
		it { expect(HackerRank.sherlock_permutation(2, 4)).to eq(10) }
		it { expect(HackerRank.sherlock_permutation(2, 5)).to eq(15) }
		it { expect(HackerRank.sherlock_permutation(2, 6)).to eq(21) }
		it { expect(HackerRank.sherlock_permutation(2, 7)).to eq(28) }
		it { expect(HackerRank.sherlock_permutation(2, 8)).to eq(36) }
		it { expect(HackerRank.sherlock_permutation(2, 9)).to eq(45) }
		it { expect(HackerRank.sherlock_permutation(2, 10)).to eq(55) }
		it { expect(HackerRank.sherlock_permutation(3, 1)).to eq(1) }
		it { expect(HackerRank.sherlock_permutation(3, 2)).to eq(4) }
		it { expect(HackerRank.sherlock_permutation(3, 3)).to eq(10) }
		it { expect(HackerRank.sherlock_permutation(3, 4)).to eq(20) }
		it { expect(HackerRank.sherlock_permutation(3, 5)).to eq(35) }
		it { expect(HackerRank.sherlock_permutation(3, 6)).to eq(56) }
		it { expect(HackerRank.sherlock_permutation(3, 7)).to eq(84) }
		it { expect(HackerRank.sherlock_permutation(3, 8)).to eq(120) }
		it { expect(HackerRank.sherlock_permutation(3, 9)).to eq(165) }
		it { expect(HackerRank.sherlock_permutation(3, 10)).to eq(220) }
		it { expect(HackerRank.sherlock_permutation(4, 1)).to eq(1) }
		it { expect(HackerRank.sherlock_permutation(4, 2)).to eq(5) }
		it { expect(HackerRank.sherlock_permutation(4, 3)).to eq(15) }
		it { expect(HackerRank.sherlock_permutation(4, 4)).to eq(35) }
		it { expect(HackerRank.sherlock_permutation(4, 5)).to eq(70) }
		it { expect(HackerRank.sherlock_permutation(4, 6)).to eq(126) }
		it { expect(HackerRank.sherlock_permutation(4, 7)).to eq(210) }
		it { expect(HackerRank.sherlock_permutation(4, 8)).to eq(330) }
		it { expect(HackerRank.sherlock_permutation(4, 9)).to eq(495) }
		it { expect(HackerRank.sherlock_permutation(4, 10)).to eq(715) }
		it { expect(HackerRank.sherlock_permutation(5, 1)).to eq(1) }
		it { expect(HackerRank.sherlock_permutation(5, 2)).to eq(6) }
		it { expect(HackerRank.sherlock_permutation(5, 3)).to eq(21) }
		it { expect(HackerRank.sherlock_permutation(5, 4)).to eq(56) }
		it { expect(HackerRank.sherlock_permutation(5, 5)).to eq(126) }
		it { expect(HackerRank.sherlock_permutation(5, 6)).to eq(252) }
		it { expect(HackerRank.sherlock_permutation(5, 7)).to eq(462) }
		it { expect(HackerRank.sherlock_permutation(5, 8)).to eq(792) }
		it { expect(HackerRank.sherlock_permutation(5, 9)).to eq(1287) }
		it { expect(HackerRank.sherlock_permutation(5, 10)).to eq(2002) }
		it { expect(HackerRank.sherlock_permutation(6, 1)).to eq(1) }
		it { expect(HackerRank.sherlock_permutation(6, 2)).to eq(7) }
		it { expect(HackerRank.sherlock_permutation(6, 3)).to eq(28) }
		it { expect(HackerRank.sherlock_permutation(6, 4)).to eq(84) }
		it { expect(HackerRank.sherlock_permutation(6, 5)).to eq(210) }
		it { expect(HackerRank.sherlock_permutation(6, 6)).to eq(462) }
		it { expect(HackerRank.sherlock_permutation(6, 7)).to eq(924) }
		it { expect(HackerRank.sherlock_permutation(6, 8)).to eq(1716) }
		it { expect(HackerRank.sherlock_permutation(6, 9)).to eq(3003) }
		it { expect(HackerRank.sherlock_permutation(6, 10)).to eq(5005) }
		it { expect(HackerRank.sherlock_permutation(7, 1)).to eq(1) }
		it { expect(HackerRank.sherlock_permutation(7, 2)).to eq(8) }
		it { expect(HackerRank.sherlock_permutation(7, 3)).to eq(36) }
		it { expect(HackerRank.sherlock_permutation(7, 4)).to eq(120) }
		it { expect(HackerRank.sherlock_permutation(7, 5)).to eq(330) }
		it { expect(HackerRank.sherlock_permutation(7, 6)).to eq(792) }
		it { expect(HackerRank.sherlock_permutation(7, 7)).to eq(1716) }
		it { expect(HackerRank.sherlock_permutation(7, 8)).to eq(3432) }
		it { expect(HackerRank.sherlock_permutation(7, 9)).to eq(6435) }
		it { expect(HackerRank.sherlock_permutation(7, 10)).to eq(11440) }
		it { expect(HackerRank.sherlock_permutation(8, 1)).to eq(1) }
		it { expect(HackerRank.sherlock_permutation(8, 2)).to eq(9) }
		it { expect(HackerRank.sherlock_permutation(8, 3)).to eq(45) }
		it { expect(HackerRank.sherlock_permutation(8, 4)).to eq(165) }
		it { expect(HackerRank.sherlock_permutation(8, 5)).to eq(495) }
		it { expect(HackerRank.sherlock_permutation(8, 6)).to eq(1287) }
		it { expect(HackerRank.sherlock_permutation(8, 7)).to eq(3003) }
		it { expect(HackerRank.sherlock_permutation(8, 8)).to eq(6435) }
		it { expect(HackerRank.sherlock_permutation(8, 9)).to eq(12870) }
		it { expect(HackerRank.sherlock_permutation(8, 10)).to eq(24310) }
		it { expect(HackerRank.sherlock_permutation(9, 1)).to eq(1) }
		it { expect(HackerRank.sherlock_permutation(9, 2)).to eq(10) }
		it { expect(HackerRank.sherlock_permutation(9, 3)).to eq(55) }
		it { expect(HackerRank.sherlock_permutation(9, 4)).to eq(220) }
		it { expect(HackerRank.sherlock_permutation(9, 5)).to eq(715) }
		it { expect(HackerRank.sherlock_permutation(9, 6)).to eq(2002) }
		it { expect(HackerRank.sherlock_permutation(9, 7)).to eq(5005) }
		it { expect(HackerRank.sherlock_permutation(9, 8)).to eq(11440) }
		it { expect(HackerRank.sherlock_permutation(9, 9)).to eq(24310) }
		it { expect(HackerRank.sherlock_permutation(9, 10)).to eq(48620) }
		it { expect(HackerRank.sherlock_permutation(10, 1)).to eq(1) }
		it { expect(HackerRank.sherlock_permutation(10, 2)).to eq(11) }
		it { expect(HackerRank.sherlock_permutation(10, 3)).to eq(66) }
		it { expect(HackerRank.sherlock_permutation(10, 4)).to eq(286) }
		it { expect(HackerRank.sherlock_permutation(10, 5)).to eq(1001) }
		it { expect(HackerRank.sherlock_permutation(10, 6)).to eq(3003) }
		it { expect(HackerRank.sherlock_permutation(10, 7)).to eq(8008) }
		it { expect(HackerRank.sherlock_permutation(10, 8)).to eq(19448) }
		it { expect(HackerRank.sherlock_permutation(10, 9)).to eq(43758) }
		it { expect(HackerRank.sherlock_permutation(10, 10)).to eq(92378) }
		it { expect(HackerRank.sherlock_permutation(10, 10)).to eq(92378) }
		it { expect(HackerRank.sherlock_permutation(10, 11)).to eq(184756) }
		it { expect(HackerRank.sherlock_permutation(10, 12)).to eq(352716) }
		it { expect(HackerRank.sherlock_permutation(10, 13)).to eq(646646) }
		it { expect(HackerRank.sherlock_permutation(10, 14)).to eq(1144066) }
		it { expect(HackerRank.sherlock_permutation(10, 15)).to eq(1961256) }
		it { expect(HackerRank.sherlock_permutation(10, 16)).to eq(3268760) }
		it { expect(HackerRank.sherlock_permutation(10, 17)).to eq(5311735) }
		it { expect(HackerRank.sherlock_permutation(10, 18)).to eq(8436285) }
		it { expect(HackerRank.sherlock_permutation(10, 19)).to eq(13123110) }
		it { expect(HackerRank.sherlock_permutation(10, 20)).to eq(20030010) }
		it { expect(HackerRank.sherlock_permutation(11, 10)).to eq(167960) }
		it { expect(HackerRank.sherlock_permutation(11, 11)).to eq(352716) }
		it { expect(HackerRank.sherlock_permutation(11, 12)).to eq(705432) }
		it { expect(HackerRank.sherlock_permutation(11, 13)).to eq(1352078) }
		it { expect(HackerRank.sherlock_permutation(11, 14)).to eq(2496144) }
		it { expect(HackerRank.sherlock_permutation(11, 15)).to eq(4457400) }
		it { expect(HackerRank.sherlock_permutation(11, 16)).to eq(7726160) }
		it { expect(HackerRank.sherlock_permutation(11, 17)).to eq(13037895) }
		it { expect(HackerRank.sherlock_permutation(11, 18)).to eq(21474180) }
		it { expect(HackerRank.sherlock_permutation(11, 19)).to eq(34597290) }
		it { expect(HackerRank.sherlock_permutation(11, 20)).to eq(54627300) }
		it { expect(HackerRank.sherlock_permutation(12, 10)).to eq(293930) }
		it { expect(HackerRank.sherlock_permutation(12, 11)).to eq(646646) }
		it { expect(HackerRank.sherlock_permutation(12, 12)).to eq(1352078) }
		it { expect(HackerRank.sherlock_permutation(12, 13)).to eq(2704156) }
		it { expect(HackerRank.sherlock_permutation(12, 14)).to eq(5200300) }
		it { expect(HackerRank.sherlock_permutation(12, 15)).to eq(9657700) }
		it { expect(HackerRank.sherlock_permutation(12, 16)).to eq(17383860) }
		it { expect(HackerRank.sherlock_permutation(12, 17)).to eq(30421755) }
		it { expect(HackerRank.sherlock_permutation(12, 18)).to eq(51895935) }
		it { expect(HackerRank.sherlock_permutation(12, 19)).to eq(86493225) }
		it { expect(HackerRank.sherlock_permutation(12, 20)).to eq(141120525) }
		it { expect(HackerRank.sherlock_permutation(13, 10)).to eq(497420) }
		it { expect(HackerRank.sherlock_permutation(13, 11)).to eq(1144066) }
		it { expect(HackerRank.sherlock_permutation(13, 12)).to eq(2496144) }
		it { expect(HackerRank.sherlock_permutation(13, 13)).to eq(5200300) }
		it { expect(HackerRank.sherlock_permutation(13, 14)).to eq(10400600) }
		it { expect(HackerRank.sherlock_permutation(13, 15)).to eq(20058300) }
		it { expect(HackerRank.sherlock_permutation(13, 16)).to eq(37442160) }
		it { expect(HackerRank.sherlock_permutation(13, 17)).to eq(67863915) }
		it { expect(HackerRank.sherlock_permutation(13, 18)).to eq(119759850) }
		it { expect(HackerRank.sherlock_permutation(13, 19)).to eq(206253075) }
		it { expect(HackerRank.sherlock_permutation(13, 20)).to eq(347373600) }
		it { expect(HackerRank.sherlock_permutation(14, 10)).to eq(817190) }
		it { expect(HackerRank.sherlock_permutation(14, 11)).to eq(1961256) }
		it { expect(HackerRank.sherlock_permutation(14, 12)).to eq(4457400) }
		it { expect(HackerRank.sherlock_permutation(14, 13)).to eq(9657700) }
		it { expect(HackerRank.sherlock_permutation(14, 14)).to eq(20058300) }
		it { expect(HackerRank.sherlock_permutation(14, 15)).to eq(40116600) }
		it { expect(HackerRank.sherlock_permutation(14, 16)).to eq(77558760) }
		it { expect(HackerRank.sherlock_permutation(14, 17)).to eq(145422675) }
		it { expect(HackerRank.sherlock_permutation(14, 18)).to eq(265182525) }
		it { expect(HackerRank.sherlock_permutation(14, 19)).to eq(471435600) }
		it { expect(HackerRank.sherlock_permutation(14, 20)).to eq(818809200) }
		it { expect(HackerRank.sherlock_permutation(15, 10)).to eq(1307504) }
		it { expect(HackerRank.sherlock_permutation(15, 11)).to eq(3268760) }
		it { expect(HackerRank.sherlock_permutation(15, 12)).to eq(7726160) }
		it { expect(HackerRank.sherlock_permutation(15, 13)).to eq(17383860) }
		it { expect(HackerRank.sherlock_permutation(15, 14)).to eq(37442160) }
		it { expect(HackerRank.sherlock_permutation(15, 15)).to eq(77558760) }
		it { expect(HackerRank.sherlock_permutation(15, 16)).to eq(155117520) }
		it { expect(HackerRank.sherlock_permutation(15, 17)).to eq(300540195) }
		it { expect(HackerRank.sherlock_permutation(15, 18)).to eq(565722720) }
		it { expect(HackerRank.sherlock_permutation(15, 19)).to eq(37158313) }
		it { expect(HackerRank.sherlock_permutation(15, 20)).to eq(855967513) }
		it { expect(HackerRank.sherlock_permutation(16, 10)).to eq(2042975) }
		it { expect(HackerRank.sherlock_permutation(16, 11)).to eq(5311735) }
		it { expect(HackerRank.sherlock_permutation(16, 12)).to eq(13037895) }
		it { expect(HackerRank.sherlock_permutation(16, 13)).to eq(30421755) }
		it { expect(HackerRank.sherlock_permutation(16, 14)).to eq(67863915) }
		it { expect(HackerRank.sherlock_permutation(16, 15)).to eq(145422675) }
		it { expect(HackerRank.sherlock_permutation(16, 16)).to eq(300540195) }
		it { expect(HackerRank.sherlock_permutation(16, 17)).to eq(601080390) }
		it { expect(HackerRank.sherlock_permutation(16, 18)).to eq(166803103) }
		it { expect(HackerRank.sherlock_permutation(16, 19)).to eq(203961416) }
		it { expect(HackerRank.sherlock_permutation(16, 20)).to eq(59928922) }
		it { expect(HackerRank.sherlock_permutation(17, 10)).to eq(3124550) }
		it { expect(HackerRank.sherlock_permutation(17, 11)).to eq(8436285) }
		it { expect(HackerRank.sherlock_permutation(17, 12)).to eq(21474180) }
		it { expect(HackerRank.sherlock_permutation(17, 13)).to eq(51895935) }
		it { expect(HackerRank.sherlock_permutation(17, 14)).to eq(119759850) }
		it { expect(HackerRank.sherlock_permutation(17, 15)).to eq(265182525) }
		it { expect(HackerRank.sherlock_permutation(17, 16)).to eq(565722720) }
		it { expect(HackerRank.sherlock_permutation(17, 17)).to eq(166803103) }
		it { expect(HackerRank.sherlock_permutation(17, 18)).to eq(333606206) }
		it { expect(HackerRank.sherlock_permutation(17, 19)).to eq(537567622) }
		it { expect(HackerRank.sherlock_permutation(17, 20)).to eq(597496544) }
		it { expect(HackerRank.sherlock_permutation(18, 10)).to eq(4686825) }
		it { expect(HackerRank.sherlock_permutation(18, 11)).to eq(13123110) }
		it { expect(HackerRank.sherlock_permutation(18, 12)).to eq(34597290) }
		it { expect(HackerRank.sherlock_permutation(18, 13)).to eq(86493225) }
		it { expect(HackerRank.sherlock_permutation(18, 14)).to eq(206253075) }
		it { expect(HackerRank.sherlock_permutation(18, 15)).to eq(471435600) }
		it { expect(HackerRank.sherlock_permutation(18, 16)).to eq(37158313) }
		it { expect(HackerRank.sherlock_permutation(18, 17)).to eq(203961416) }
		it { expect(HackerRank.sherlock_permutation(18, 18)).to eq(537567622) }
		it { expect(HackerRank.sherlock_permutation(18, 19)).to eq(75135237) }
		it { expect(HackerRank.sherlock_permutation(18, 20)).to eq(672631781) }
		it { expect(HackerRank.sherlock_permutation(19, 10)).to eq(6906900) }
  end

  describe '.candy_store' do
    let(:test_cases) do
      [
        [[311, 160], 344234994],
        [[335, 110], 577336240],
        [[42, 447], 579607360],
        [[244, 259], 885019500],
        [[520, 186], 679172000]
      ]
    end

    it 'tests every candy store' do
      test_cases.each do |n_and_k, result|
        expect(HackerRank.candy(*n_and_k)).to eq(result)
      end
    end
  end

  describe '.build_list' do
    describe 'test case 1' do
      let(:string) { 'abc' }
      let(:result) { ['a', 'ab', 'abc', 'ac', 'b', 'bc', 'c'] }
      it { expect(HackerRank.build_list(string)).to eq(result) }
    end

    describe 'test case 2' do
      let(:string) { 'ab' }
      let(:result) { ['a', 'ab', 'b'] }
      it { expect(HackerRank.build_list(string)).to eq(result) }
    end

    describe 'test case 3' do
      let(:string) { 'xyz' }
      let(:result) { ['x', 'xy', 'xyz', 'xz', 'y', 'yz', 'z'] }
      it { expect(HackerRank.build_list(string)).to eq(result) }
    end

    describe 'test case 1' do
      let(:string) { 'a' }
      let(:result) { ['a'] }
      it { expect(HackerRank.build_list(string)).to eq(result) }
    end

    describe 'test case 5' do
      let(:string) { 'abcd' }
      let(:result) do
        [
          'a', 'ab', 'abc', 'abcd', 'abd', 'ac', 'acd', 'ad',
          'b', 'bc', 'bcd', 'bd',
          'c', 'cd',
          'd'
        ]
      end
      it { expect(HackerRank.build_list(string)).to eq(result) }
    end
  end

  describe '.matrix_tracing' do
    it { expect(HackerRank.matrix_tracing(2, 3)).to eq(3) }
    it { expect(HackerRank.matrix_tracing(134333, 553409)).to eq(741521468) }
    it { expect(HackerRank.matrix_tracing(366974, 828680)).to eq(952393599) }
    it { expect(HackerRank.matrix_tracing(544882, 825617)).to eq(365880408) }
    it { expect(HackerRank.matrix_tracing(474666, 108408)).to eq(546955286) }
    it { expect(HackerRank.matrix_tracing(509757, 614922)).to eq(121897039) }
    it { expect(HackerRank.matrix_tracing(663644, 680882)).to eq(14417500) }
    it { expect(HackerRank.matrix_tracing(675721, 471481)).to eq(146310899) }
    it { expect(HackerRank.matrix_tracing(454574, 985749)).to eq(7148858) }
  end

  describe '.special_multiple' do
    it { expect(HackerRank.special_multiple(467)).to eq(900000999) }
    it { expect(HackerRank.special_multiple(496)).to eq(9990990000) }
    it { expect(HackerRank.special_multiple(278)).to eq(9909909090) }
    it { expect(HackerRank.special_multiple(350)).to eq(900900) }
    it { expect(HackerRank.special_multiple(34)).to eq(999090) }
    it { expect(HackerRank.special_multiple(47)).to eq(90099) }
    it { expect(HackerRank.special_multiple(98)).to eq(99000090) }
    it { expect(HackerRank.special_multiple(15)).to eq(90) }
    it { expect(HackerRank.special_multiple(67)).to eq(9909099) }
    it { expect(HackerRank.special_multiple(47)).to eq(90099) }
  end

  describe '.possible_path' do
    it { expect(HackerRank.possible_path(3299, 7314, 6015, 6906)).to eq('NO') }
    it { expect(HackerRank.possible_path(2584, 2065, 5206, 6088)).to eq('NO') }
    it { expect(HackerRank.possible_path(968, 1238, 91, 9293)).to eq('NO') }
    it { expect(HackerRank.possible_path(7545, 2436, 3299, 4059)).to eq('NO') }
    it { expect(HackerRank.possible_path(5564, 1059, 4129, 3475)).to eq('YES') }
    it { expect(HackerRank.possible_path(1595, 4472, 8536, 7035)).to eq('YES') }
    it { expect(HackerRank.possible_path(3144, 2372, 1788, 1197)).to eq('NO') }
    it { expect(HackerRank.possible_path(3627, 4710, 9834, 6925)).to eq('NO') }
    it { expect(HackerRank.possible_path(8375, 5848, 182, 958)).to eq('NO') }
    it { expect(HackerRank.possible_path(7913, 5387, 3397, 8880)).to eq('YES') }
  end

  describe '.reverse_game' do
    it { expect(HackerRank.reverse_game(3, 1)).to eq(2) }
    it { expect(HackerRank.reverse_game(5, 2)).to eq(4) }
    it { expect(HackerRank.reverse_game(79529, 75478)).to eq(8100) }
    it { expect(HackerRank.reverse_game(67252, 46614)).to eq(41274) }
    it { expect(HackerRank.reverse_game(70804, 37775)).to eq(66056) }
    it { expect(HackerRank.reverse_game(76109, 60695)).to eq(30826) }
    it { expect(HackerRank.reverse_game(82066, 30266)).to eq(60533) }
    it { expect(HackerRank.reverse_game(98495, 2317)).to eq(4635) }
    it { expect(HackerRank.reverse_game(99441, 14378)).to eq(28757) }
    it { expect(HackerRank.reverse_game(97956, 60835)).to eq(74240) }
    it { expect(HackerRank.reverse_game(65061, 26283)).to eq(52567) }
    it { expect(HackerRank.reverse_game(92617, 91020)).to eq(3192) }
    it { expect(HackerRank.reverse_game(84688, 37515)).to eq(75031) }
    it { expect(HackerRank.reverse_game(82055, 60583)).to eq(42942) }
    it { expect(HackerRank.reverse_game(95564, 6711)).to eq(13423) }
    it { expect(HackerRank.reverse_game(83613, 83005)).to eq(1214) }
    it { expect(HackerRank.reverse_game(97958, 44998)).to eq(89997) }
    it { expect(HackerRank.reverse_game(78026, 1062)).to eq(2125) }
    it { expect(HackerRank.reverse_game(87135, 48677)).to eq(76914) }
    it { expect(HackerRank.reverse_game(51140, 15265)).to eq(30531) }
    it { expect(HackerRank.reverse_game(91955, 40272)).to eq(80545) }
    it { expect(HackerRank.reverse_game(86210, 44931)).to eq(82556) }
  end

  describe '.strange_grid' do
    it { expect(HackerRank.strange_grid(1, 1)).to eq(0) }
    it { expect(HackerRank.strange_grid(1, 2)).to eq(2) }
    it { expect(HackerRank.strange_grid(1, 3)).to eq(4) }
    it { expect(HackerRank.strange_grid(1, 4)).to eq(6) }
    it { expect(HackerRank.strange_grid(1, 5)).to eq(8) }
    it { expect(HackerRank.strange_grid(2, 1)).to eq(1) }
    it { expect(HackerRank.strange_grid(2, 2)).to eq(3) }
    it { expect(HackerRank.strange_grid(2, 3)).to eq(5) }
    it { expect(HackerRank.strange_grid(2, 4)).to eq(7) }
    it { expect(HackerRank.strange_grid(2, 5)).to eq(9) }
    it { expect(HackerRank.strange_grid(6, 3)).to eq(25) }
  end

  describe '.even_odd_query' do
    let(:array) { [1, 2, 7, 0, 8] }
    it { expect(HackerRank.even_odd_query(array, 2, 4)).to eq('Even') }
    it { expect(HackerRank.even_odd_query(array, 1, 2)).to eq('Odd') }
    it { expect(HackerRank.even_odd_query(array, 2, 3)).to eq('Even') }
    it { expect(HackerRank.even_odd_query(array, 2, 4)).to eq('Even') }
    it { expect(HackerRank.even_odd_query(array, 3, 5)).to eq('Odd') }
    it { expect(HackerRank.even_odd_query(array, 1, 3)).to eq('Odd') }
    it { expect(HackerRank.even_odd_query(array, 3, 4)).to eq('Odd') }
    it { expect(HackerRank.even_odd_query(array, 1, 3)).to eq('Odd') }
    it { expect(HackerRank.even_odd_query(array, 3, 5)).to eq('Odd') }
    it { expect(HackerRank.even_odd_query(array, 3, 4)).to eq('Odd') }
  end

  describe '.gallons' do
    it { expect(HackerRank.find_gallons(10, 3)).to eq([10, 3, 7, 4, 1, 8, 5, 2, 9, 6]) }
    it { expect(HackerRank.find_gallons(5, 3)).to eq([5, 3, 2, 4, 1]) }
    it { expect(HackerRank.find_gallons(6, 3)).to eq([6, 3]) }
  end

  describe '.time_conversion' do
    it { expect(HackerRank.time_conversion('12:45:54PM')).to eq('12:45:54') }
    it { expect(HackerRank.time_conversion('12:40:22AM')).to eq('00:40:22') }
    it { expect(HackerRank.time_conversion('07:05:45PM')).to eq('19:05:45') }
    it { expect(HackerRank.time_conversion('07:05:45AM')).to eq('07:05:45') }
  end

  describe '.cut_the_sticks' do
    it { expect(HackerRank.cut_the_sticks([5, 4, 4, 2, 2, 8])).to eq([6, 4, 2, 1]) }
    it { expect(HackerRank.cut_the_sticks([1, 2, 3, 4, 3, 3, 2, 1])).to eq([8, 6, 4, 1]) }
  end

  describe '.anagramify' do
    it { expect(HackerRank.anagramify('aaabbb')).to eq(3) }
    it { expect(HackerRank.anagramify('ab')).to eq(1) }
    it { expect(HackerRank.anagramify('abc')).to eq(-1) }
    it { expect(HackerRank.anagramify('mnop')).to eq(2) }
    it { expect(HackerRank.anagramify('xyyx')).to eq(0) }
    it { expect(HackerRank.anagramify('xaxbbbxx')).to eq(1) }
    it { expect(HackerRank.anagramify('hhpddlnnsjfoyxpciioigvjqzfbpllssuj')).to eq(10) }
    it { expect(HackerRank.anagramify('xulkowreuowzxgnhmiqekxhzistdocbnyozmnqthhpievvlj')).to eq(13) }
    it { expect(HackerRank.anagramify('dnqaurlplofnrtmh')).to eq(5) }
    it { expect(HackerRank.anagramify('aujteqimwfkjoqodgqaxbrkrwykpmuimqtgulojjwtukjiqrasqejbvfbixnchzsahpnyayutsgecwvcqngzoehrmeeqlgknnb')).to eq(26) }
    it { expect(HackerRank.anagramify('lbafwuoawkxydlfcbjjtxpzpchzrvbtievqbpedlqbktorypcjkzzkodrpvosqzxmpad')).to eq(15) }
    it { expect(HackerRank.anagramify('drngbjuuhmwqwxrinxccsqxkpwygwcdbtriwaesjsobrntzaqbe')).to eq(-1) }
    it { expect(HackerRank.anagramify('ubulzt')).to eq(3) }
    it { expect(HackerRank.anagramify('vxxzsqjqsnibgydzlyynqcrayvwjurfsqfrivayopgrxewwruvemzy')).to eq(13) }
    it { expect(HackerRank.anagramify('xtnipeqhxvafqaggqoanvwkmthtfirwhmjrbphlmeluvoa')).to eq(13) }
    it { expect(HackerRank.anagramify('gqdvlchavotcykafyjzbbgmnlajiqlnwctrnvznspiwquxxsiwuldizqkkaawpyyisnftdzklwagv')).to eq(-1) }
  end

  describe '.find_anagram_pairs' do
    it { expect(HackerRank.find_anagram_pairs('abba')).to eq(4) }
    it { expect(HackerRank.find_anagram_pairs('abcd')).to eq(0) }
    it { expect(HackerRank.find_anagram_pairs('ifailuhkqq')).to eq(3) }
    it { expect(HackerRank.find_anagram_pairs('hucpoltgty')).to eq(2) }
    it { expect(HackerRank.find_anagram_pairs('ovarjsnrbf')).to eq(2) }
    it { expect(HackerRank.find_anagram_pairs('pvmupwjjjf')).to eq(6) }
    it { expect(HackerRank.find_anagram_pairs('iwwhrlkpek')).to eq(3) }
  end

  describe '.valid_sherlock_string?' do
    it { expect(HackerRank.valid_sherlock_string?('aabb')).to eq('YES') }
    it { expect(HackerRank.valid_sherlock_string?('abbac')).to eq('YES') }
    it { expect(HackerRank.valid_sherlock_string?('aabbcd')).to eq('NO') }
    it { expect(HackerRank.valid_sherlock_string?('ibfdgaeadiaefgbhbdghhhbgdfgeiccbiehhfcggchgghadhdhagfbahhddgghbdehidbibaeaagaeeigffcebfbaieggabcfbiiedcabfihchdfabifahcbhagccbdfifhghcadfiadeeaheeddddiecaicbgigccageicehfdhdgafaddhffadigfhhcaedcedecafeacbdacgfgfeeibgaiffdehigebhhehiaahfidibccdcdagifgaihacihadecgifihbebffebdfbchbgigeccahgihbcbcaggebaaafgfedbfgagfediddghdgbgehhhifhgcedechahidcbchebheihaadbbbiaiccededchdagfhccfdefigfibifabeiaccghcegfbcghaefifbachebaacbhbfgfddeceababbacgffbagidebeadfihaefefegbghgddbbgddeehgfbhafbccidebgehifafgbghafacgfdccgifdcbbbidfifhdaibgigebigaedeaaiadegfefbhacgddhchgcbgcaeaieiegiffchbgbebgbehbbfcebciiagacaiechdigbgbghefcahgbhfibhedaeeiffebdiabcifgccdefabccdghehfibfiifdaicfedagahhdcbhbicdgibgcedieihcichadgchgbdcdagaihebbabhibcihicadgadfcihdheefbhffiageddhgahaidfdhhdbgciiaciegchiiebfbcbhaeagccfhbfhaddagnfieihghfbaggiffbbfbecgaiiidccdceadbbdfgigibgcgchafccdchgifdeieicbaididhfcfdedbhaadedfageigfdehgcdaecaebebebfcieaecfagfdieaefdiedbcadchabhebgehiidfcgahcdhcdhgchhiiheffiifeegcfdgbdeffhgeghdfhbfbifgidcafbfcd')).to eq('YES') }
    it { expect(HackerRank.valid_sherlock_string?('jtqgugmcsxvdwidtcyqpogkdifapuloqykjfxruvfrshcehekoiwbpbrprahwvhliglyxynjotbaswnnnmxbkmcftvsdqajemeul')).to eq('YES') }
    it { expect(HackerRank.valid_sherlock_string?('hfchdkkbfifgbgebfaahijchgeeeiagkadjfcbekbdaifchkjfejckbiiihegacfbchdihkgbkbddgaefhkdgccjejjaajgijdkd')).to eq('YES') }
  end

  describe '.morgan_and_a_string?' do
    describe 'test case 2', :broken do
      let(:a) { 'DAD' }
      let(:b) { 'DAD' }
      let(:answer) { 'DADADD' }
      it { expect(HackerRank.morgan_and_a_string?(a, b)).to eq(answer) }
    end

    describe 'test case 3' do
      let(:a) { 'ABCBA' }
      let(:b) { 'BCBA' }
      let(:answer) { 'ABBCBACBA' }
      it { expect(HackerRank.morgan_and_a_string?(a, b)).to eq(answer) }
    end

    describe 'test case 4' do
      let(:a) { 'BAC' }
      let(:b) { 'BAB' }
      let(:answer) { 'BABABC' }
      it { expect(HackerRank.morgan_and_a_string?(a, b)).to eq(answer) }
    end

    describe 'test case 5' do
      let(:a) { 'DAD' }
      let(:b) { 'DABC' }
      let(:answer) { 'DABCDAD' }
      it { expect(HackerRank.morgan_and_a_string?(a, b)).to eq(answer) }
    end

    describe 'test case 6' do
      let(:a) { 'YZYYZYZYY' }
      let(:b) { 'ZYYZYZYY' }
      let(:answer) { 'YZYYZYYZYZYYZYZYY' }
      it { expect(HackerRank.morgan_and_a_string?(a, b)).to eq(answer) }
    end

    describe 'test case 7' do
      let(:a) { 'BANANA' }
      let(:b) { 'START' }
      let(:answer) { 'BANANASTART' }
      it { expect(HackerRank.morgan_and_a_string?(a, b)).to eq(answer) }
    end

    describe 'test case 8' do
      let(:a) { 'JACK' }
      let(:b) { 'DANIEL' }
      let(:answer) { 'DAJACKNIEL' }
      it { expect(HackerRank.morgan_and_a_string?(a, b)).to eq(answer) }
    end

    describe 'test case 9' do
      let(:a) { 'ABACABA' }
      let(:b) { 'ABACABA' }
      let(:answer) { 'AABABACABACABA' }
      it { expect(HackerRank.morgan_and_a_string?(a, b)).to eq(answer) }
    end

    describe 'test case 10' do
      let(:a) { 'ABA' }
      let(:b) { 'ABAA' }
      let(:answer) { 'AABABAA' }
      it { expect(HackerRank.morgan_and_a_string?(a, b)).to eq(answer) }
    end

    describe 'test case 11' do
      let(:a) { 'BD' }
      let(:b) { 'BA' }
      let(:answer) { 'BABD' }
      it { expect(HackerRank.morgan_and_a_string?(a, b)).to eq(answer) }
    end

    describe 'test case 14' do
      let(:a) { 'AAAAAAAAAAB' }
      let(:b) { 'AAAAAAAAAAC' }
      let(:answer) { 'AAAAAAAAAAAAAAAAAAAABC' }
      it { expect(HackerRank.morgan_and_a_string?(a, b)).to eq(answer) }
    end

    describe 'test case 14' do
      let(:a) { 'CAJA' }
      let(:b) { 'CABA' }
      let(:answer) { 'CABACAJA' }
      it { expect(HackerRank.morgan_and_a_string?(a, b)).to eq(answer) }
    end
  end

  describe '.z_function' do
    it { expect(HackerRank.z_function('aaaaa')).to eq([0, 4, 3, 2, 1]) }
    it { expect(HackerRank.z_function('aaabaab')).to eq([0, 2, 1, 0, 2, 1, 0]) }
    it { expect(HackerRank.z_function('abacaba')).to eq([0, 0, 1, 0, 3, 0, 1]) }
    it { expect(HackerRank.z_function('ababaa')).to eq([0, 0, 3, 0, 1, 1]) }
    it { expect(HackerRank.z_function('aa')).to eq([0, 1]) }
  end

  describe '.common_child' do
    it { expect(HackerRank.common_child('ABCD', 'ABDC')).to eq(3) }
    it { expect(HackerRank.common_child('HARRY', 'SALLY')).to eq(2) }
    it { expect(HackerRank.common_child('HARRY', 'SALL')).to eq(1) }
    it { expect(HackerRank.common_child('AA', 'BB')).to eq(0) }
    it { expect(HackerRank.common_child('SHINCHAN', 'NOHARAAA')).to eq(3) }
    it { expect(HackerRank.common_child('ABCDEF', 'FBDAMN')).to eq(2) }
    it { expect(HackerRank.common_child('ABCDEF', 'ABCDEF')).to eq(6) }
  end

  describe '.maximise_sum' do
    it { expect(HackerRank.maximise_sum([3, 3, 9, 9, 5], 7)).to eq(6) }
    it { expect(HackerRank.maximise_sum([6, 6, 11, 15, 12, 1], 13)).to eq(12) }
  end

  describe '.bigger_is_greater' do
    it { expect(HackerRank.bigger_is_greater('a')).to eq('no answer') }
    it { expect(HackerRank.bigger_is_greater('ab')).to eq('ba') }
    it { expect(HackerRank.bigger_is_greater('bb')).to eq('no answer') }
    it { expect(HackerRank.bigger_is_greater('hefg')).to eq('hegf') }
    it { expect(HackerRank.bigger_is_greater('dhck')).to eq('dhkc') }
    it { expect(HackerRank.bigger_is_greater('dkhc')).to eq('hcdk') }
    it { expect(HackerRank.bigger_is_greater('gojh')).to eq('hgjo') }
  end

  describe '.sort' do
    it { expect(HackerRank.sort([10, 4, 13, 2, -1])).to eq([-1, 2, 4, 10, 13]) }
    it { expect(HackerRank.sort([6, 6, 11, 15, 12, 1])).to eq([1, 6, 6, 11, 12, 15]) }
    it { expect(HackerRank.sort([3, 2, 1, 9, 2, 1, 6])).to eq([1, 1, 2, 2, 3, 6, 9]) }
    it { expect(HackerRank.sort([38, 27, 43, 3, 9, 82, 10])).to eq([3, 9, 10, 27, 38, 43, 82]) }
  end
end
