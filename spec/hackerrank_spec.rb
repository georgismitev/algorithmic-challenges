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
end
