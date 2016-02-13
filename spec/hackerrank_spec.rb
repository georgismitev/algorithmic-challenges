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
      let(:list) { ['a', 'ab', 'abc', 'ac', 'b', 'bc', 'c'] }
      it { expect(HackerRank.build_list(string)).to eq(list) }
    end

    describe 'test case 2' do
      let(:string) { 'ab' }
      let(:list) { ['a', 'ab', 'b'] }
      it { expect(HackerRank.build_list(string)).to eq(list) }
    end

    describe 'test case 3' do
      let(:string) { 'xyz' }
      let(:list) { ['x', 'xy', 'xyz', 'xz', 'y', 'yz', 'z'] }
      it { expect(HackerRank.build_list(string)).to eq(list) }
    end

    describe 'test case 1' do
      let(:string) { 'a' }
      let(:list) { ['a'] }
      it { expect(HackerRank.build_list(string)).to eq(list) }
    end

    describe 'test case 5' do
      let(:string) { 'abcd' }
      let(:list) do
        [
          'a', 'ab', 'abc', 'abcd', 'abd', 'ac', 'acd', 'ad',
          'b', 'bc', 'bcd', 'bd',
          'c', 'cd',
          'd'
        ]
      end
      it { expect(HackerRank.build_list(string)).to eq(list) }
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
  
  describe '.sherlock_and_watson' do
    let(:array) { [1, 2, 3] }
    let(:idx) { [0, 1, 2] }
    let(:k) { 2 }
    let(:expected) { [2, 3, 1] }
    it { expect(HackerRank.sherlock_and_watson(array, idx, k)).to eq(expected) }
  end

  describe '.maxsubarray' do
    it { expect(HackerRank.maxsubarray([1, 2, 3, 4])).to eq([10, 10]) }
    it { expect(HackerRank.maxsubarray([1, 2, 3])).to eq([6, 6]) }
    it { expect(HackerRank.maxsubarray([2, -1, 2, 3, 4, -5])).to eq([10, 11]) }
    it { expect(HackerRank.maxsubarray([-2, 1, -3, 4, -1, 2, 1, -5, 4])).to eq([6, 12]) }
    it { expect(HackerRank.maxsubarray([1, -3, 2, -5, 7, 6, -1, -4, 11, -23])).to eq([19, 27]) }
    it { expect(HackerRank.maxsubarray([-2, -3, -6, -12, -1, -52])).to eq([-1, -1]) }
    it { expect(HackerRank.maxsubarray([-1, -2, -3, -4, -5, -6])).to eq([-1, -1]) }
    it { expect(HackerRank.maxsubarray([1])).to eq([1, 1]) }
    it { expect(HackerRank.maxsubarray([1, -2])).to eq([1, 1]) }
    it { expect(HackerRank.maxsubarray([-10])).to eq([-10, -10]) }
    it { expect(HackerRank.maxsubarray([1, -1, -1, -1, -1, 5])).to eq([5, 6]) }
  end

  describe '.string_reduction' do
    it { expect(HackerRank.string_reduction('cab')).to eq(2) }
    it { expect(HackerRank.string_reduction('bcab')).to eq(1) }
    it { expect(HackerRank.string_reduction('ccccc')).to eq(5) }
    it { expect(HackerRank.string_reduction('aabaaabc')).to eq(1) }
    it { expect(HackerRank.string_reduction('bcabaabbcacaacbacc')).to eq(1) }
    it { expect(HackerRank.string_reduction('bcabaaabbaacbccbbbababca')).to eq(1) }
    it { expect(HackerRank.string_reduction('bababbbcabccbbaccc')).to eq(2) }
    it { expect(HackerRank.string_reduction('babcbbaabcbcbcbaabbccaacccbbbcaaacabbbbaaaccbcccacbbccaccbbaacaccbabcaaaacaccacbaacc')).to eq(1) }
    it { expect(HackerRank.string_reduction('ccaaaabcccaaaccbbccbacbcaccaccbbaabaacaacbbaaacbbcabbccbbccacbccbaccabcaccabaaabababbaaacbbbaabc')).to eq(1) }
  end

  describe '.coin_change' do
    it { expect(HackerRank.coin_change(4, [1, 2, 3])).to eq(4) }
    it { expect(HackerRank.coin_change(10, [2, 5, 3, 6])).to eq(5) }
    it { expect(HackerRank.coin_change(6, [1, 2, 3, 4, 6])).to eq(10) }
    it { expect(HackerRank.coin_change(166, [5, 37, 8, 39, 33, 17, 22, 32, 13, 7, 10, 35, 40, 2, 43, 49, 46, 19, 41, 1, 12, 11, 28])).to eq(96190959) }
  end

  describe '.find_ceiling' do
    it { expect(HackerRank.find_ceiling(5, [-1, 2, 4, 10, 13])).to eq([10, 3]) }
    it { expect(HackerRank.find_ceiling(3, [-1, 2, 4, 10, 13])).to eq([4, 2]) }
    it { expect(HackerRank.find_ceiling(0, [-1, 2, 4, 10, 13])).to eq([2, 1]) }
    it { expect(HackerRank.find_ceiling(25, [1, 6, 6, 11, 12, 15])).to eq([-1, -1]) }
    it { expect(HackerRank.find_ceiling(8, [1, 1, 2, 2, 3, 6, 9])).to eq([9, 6]) }
    it { expect(HackerRank.find_ceiling(0, [1, 1, 2, 2, 3, 6, 9])).to eq([1, 0]) }
    it { expect(HackerRank.find_ceiling(-1, [1, 1, 2, 2, 3, 6, 9])).to eq([1, 0]) }
    it { expect(HackerRank.find_ceiling(7, [2, 5, 6, 8, 9, 10, 12, 15])).to eq([8, 3]) }
  end

  describe '.lis' do
    describe 'test case 1' do
      let(:array) { [15, 27, 14, 38, 26, 55, 46, 65, 85] }
      it { expect(HackerRank.lis(array)).to eq(6) }
    end

    describe 'test case 2' do
      let(:array) { [2, 7, 4, 3, 8] }
      it { expect(HackerRank.lis(array)).to eq(3) }
    end

    describe 'test case 3' do
      let(:array) { [2, 5, 3, 7, 11, 8, 10, 13, 6] }
      it { expect(HackerRank.lis(array)).to eq(6) }
    end

    describe 'test case 4' do
      let(:array) { [1, 5, 3, 2, 4] }
      it { expect(HackerRank.lis(array)).to eq(3) }
    end

    describe 'test case 5' do
      let(:array) { [3, 4, -1, 5, 8, 2, 3, 12, 7, 9, 10] }
      it { expect(HackerRank.lis(array)).to eq(6) }
    end
  end

  describe '.largest_subsequence' do
    it { expect(HackerRank.largest_subsequence('test')).to eq('tt') }
    it { expect(HackerRank.largest_subsequence('t')).to eq('t') }
    it { expect(HackerRank.largest_subsequence('abcd')).to eq('d') }
    it { expect(HackerRank.largest_subsequence('lexicographically')).to eq('y') }
    it { expect(HackerRank.largest_subsequence('largest')).to eq('t') }
    it { expect(HackerRank.largest_subsequence('subsequence')).to eq('uune') }
    it { expect(HackerRank.largest_subsequence('ifailuhkqq')).to eq('uqq') }
    it { expect(HackerRank.largest_subsequence('hucpoltgty')).to eq('y') }
    it { expect(HackerRank.largest_subsequence('ovarjsnrbf')).to eq('vsrf') }
    it { expect(HackerRank.largest_subsequence('pvmupwjjjf')).to eq('wjjjf') }
    it { expect(HackerRank.largest_subsequence('iwwhrlkpek')).to eq('wwrpk') }
  end

  describe '.kmp' do
    it { expect(HackerRank.kmp('abcdabca')).to eq([0, 0, 0, 0, 1, 2, 3, 1]) }
    it { expect(HackerRank.kmp('abcaby')).to eq([0, 0, 0, 1, 2, 0]) }
    it { expect(HackerRank.kmp('aabaabaaa')).to eq([0, 1, 0, 1, 2, 3, 4, 5, 2]) }
    it { expect(HackerRank.kmp('acacabacacabacacac')).to eq([0, 0, 1, 2, 3, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 4]) }
  end

  describe '.shortest_palindrome' do
    it { expect(HackerRank.shortest_palindrome('abab')).to eq('babab') }
    it { expect(HackerRank.shortest_palindrome('abcd')).to eq('dcbabcd') }
    it { expect(HackerRank.shortest_palindrome('banana')).to eq('ananabanana') }
    it { expect(HackerRank.shortest_palindrome('ananab')).to eq('bananab') }
    it { expect(HackerRank.shortest_palindrome('abcdabca')).to eq('acbadcbabcdabca') }
  end

  describe 'minimum spanning tree' do
    let(:graph) do
      g = PrimUndirectedGraph.new
      edges.each { |e| g.add_edge(*e) }
      g
    end

    describe 'test case 1' do
      let(:vertices) do
        h = { }
        [1, 2, 3, 4].each { |k| h[k] = 1 }
        h
      end
      let(:edges) do
        [
          [1, 2, 5],
          [1, 3, 3],
          [1, 4, 6],
          [2, 4, 7],
          [2, 3, 4],
          [3, 4, 5]
        ]
      end
      let(:weight) { 12 }
      let(:start_vertex) { 1 }

      it { expect(HackerRank.find_kruskal_weight(vertices, edges)).to eq(weight) }

      it 'finds the minimum spanning tree weight with prim' do
        expect(HackerRank.find_prim_weight(graph, start_vertex)).to eq(weight)
      end
    end

    describe 'test case 2' do
      let(:vertices) do
        h = { }
        [1, 2, 3, 4].each { |k| h[k] = 1 }
        h
      end
      let(:edges) do
        [
          [1, 2, 1000],
          [3, 4, 299],
          [2, 4, 200],
          [2, 4, 100],
          [2, 3, 300],
          [2, 3, 6]
        ]
      end
      let(:weight) { 1106 }
      let(:start_vertex) { 2 }

      it { expect(HackerRank.find_kruskal_weight(vertices, edges)).to eq(weight) }

      it 'finds the minimum spanning tree weight with prim' do
        expect(HackerRank.find_prim_weight(graph, start_vertex)).to eq(weight)
      end
    end

    describe 'test case 3' do
      let(:vertices) do
        h = { }
        [1, 2, 3, 4, 5].each { |k| h[k] = 1 }
        h
      end
      let(:edges) do
        [
          [1, 2, 20],
          [1, 3, 50],
          [1, 4, 70],
          [1, 5, 90],
          [2, 3, 30],
          [3, 4, 40],
          [4, 5, 60]
        ]
      end
      let(:weight) { 150 }
      let(:start_vertex) { 1 }

      it { expect(HackerRank.find_kruskal_weight(vertices, edges)).to eq(weight) }

      it 'finds the minimum spanning tree weight with prim' do
        expect(HackerRank.find_prim_weight(graph, start_vertex)).to eq(weight)
      end
    end

    describe 'test case 4' do
      let(:vertices) do
        h = { }
        [1, 2, 3, 4, 5].each { |k| h[k] = 1 }
        h
      end
      let(:edges) do
        [
          [1, 2, 20],
          [1, 2, 0],
          [1, 3, 50],
          [1, 3, 0],
          [1, 4, 70],
          [1, 4, 0],
          [1, 5, 90],
          [1, 5, 0],
          [2, 3, 30],
          [2, 3, 0],
          [3, 4, 40],
          [3, 4, 0],
          [4, 5, 60],
          [4, 5, 0]
        ]
      end
      let(:weight) { 0 }
      let(:start_vertex) { 1 }

      it { expect(HackerRank.find_kruskal_weight(vertices, edges)).to eq(weight) }

      it 'finds the minimum spanning tree weight with prim' do
        expect(HackerRank.find_prim_weight(graph, start_vertex)).to eq(weight)
      end
    end

    describe 'test case 5' do
      let(:vertices) do
        h = { }
        [1, 2, 3, 4, 5].each { |k| h[k] = 1 }
        h
      end
      let(:edges) do
        [
          [1, 2, 0],
          [1, 3, 50],
          [1, 4, 70],
          [1, 5, 90],
          [2, 3, 30],
          [3, 4, 40],
          [4, 5, 60],
        ]
      end
      let(:weight) { 130 }
      let(:start_vertex) { 1 }

      it { expect(HackerRank.find_kruskal_weight(vertices, edges)).to eq(weight) }

      it 'finds the minimum spanning tree weight with prim' do
        expect(HackerRank.find_prim_weight(graph, start_vertex)).to eq(weight)
      end
    end

    describe 'test case 6' do
      let(:vertices) do
        h = { }
        [1, 2, 3, 4, 5].each { |k| h[k] = 1 }
        h
      end
      let(:edges) do
        [
          [1, 2, 3],
          [1, 3, 4],
          [4, 2, 6],
          [5, 2, 2],
          [2, 3, 5],
          [3, 5, 7]
        ]
      end
      let(:weight) { 15 }
      let(:start_vertex) { 1 }

      it { expect(HackerRank.find_kruskal_weight(vertices, edges)).to eq(weight) }

      it 'finds the minimum spanning tree weight with prim' do
        expect(HackerRank.find_prim_weight(graph, start_vertex)).to eq(weight)
      end
    end
  end

  describe 'floyd shortest path' do
    let(:graph) do
      g = FloydDirectedGraph.new(vertices)
      edges.each { |e| g.add_edge(*e) }
      g
    end

    describe 'test case 1' do
      let(:edges) do
        [
          [1, 2, 5],
          [1, 4, 24],
          [2, 4, 6],
          [3, 4, 4],
          [3, 2, 7]
        ]
      end
      let(:questions) do
        [
          [1, 2],
          [3, 1],
          [1, 4]
        ]
      end
      let(:vertices) { 4 }
      let(:answers) { HackerRank.floyd_shortest_paths(graph, questions) }
      it { expect(answers).to eq([5, -1, 11]) }
    end

    describe 'test case 2' do
      let(:edges) do
        [
          [1, 2, 1],
          [3, 2, 150],
          [4, 3, 99],
          [1, 4, 100],
          [3, 1, 200]
        ]
      end
      let(:questions) do
        [
          [3, 2],
          [1, 2],
          [4, 3],
          [1, 2]
        ]
      end
      let(:vertices) { 4 }
      let(:answers) { HackerRank.floyd_shortest_paths(graph, questions) }
      it { expect(answers).to eq([150, 1, 99, 1]) }
    end

    describe 'test case 3' do
      let(:edges) do
        [
          [1, 2, 20],
          [1, 3, 50],
          [1, 4, 70],
          [1, 5, 90],
          [2, 3, 30],
          [3, 4, 40],
          [4, 5, 60]
        ]
      end
      let(:questions) do
        [
          [1, 4],
          [5, 1],
          [2, 5],
          [3, 4],
          [1, 4],
          [1, 2],
          [3, 1],
          [1, 2]
        ]
      end
      let(:vertices) { 5 }
      let(:answers) { HackerRank.floyd_shortest_paths(graph, questions) }
      it { expect(answers).to eq([70, -1, 130, 40, 70, 20, -1, 20]) }
    end

    describe 'test case 4' do
      let(:edges) do
        [
          [2, 1, 298],
          [3, 4, 299],
          [2, 4, 200],
          [2, 4, 100],
          [3, 2, 300],
          [3, 2, 6]
        ]
      end
      let(:questions) do
        [
          [3, 2],
          [4, 1],
          [1, 1],
          [3, 4]
        ]
      end
      let(:vertices) { 4 }
      let(:answers) { HackerRank.floyd_shortest_paths(graph, questions) }
      it { expect(answers).to eq([6, -1, 0, 106]) }
    end
  end

  describe '.crab_graphs' do
    let(:graph) do
      g = Hash.new { |h, k| h[k] = {} }
      edges.each do |s, e|
        g[s][e] = 1
        g[e][s] = 1
      end
      g
    end

    describe 'test case 1' do
      let(:edges) { [[11, 9], [23, 21]] }
      let(:t) { 2 }
      let(:n) { 25 }

      it { expect(HackerRank.crab_graphs(graph, n, t)).to eq(4) }
    end

    describe 'test case 2' do
      let(:edges) { [[1, 4], [2, 4], [3, 4], [5, 4], [5, 8], [5, 7], [5, 6]] }
      let(:t) { 2 }
      let(:n) { 8 }

      it { expect(HackerRank.crab_graphs(graph, n, t)).to eq(6) }
    end

    describe 'test case 3' do
      let(:edges) do
        [[1, 2], [2, 3], [3, 4], [4, 5], [5, 6], [6, 1], [1, 4], [2, 5]]
      end
      let(:t) { 3 }
      let(:n) { 6 }

      it { expect(HackerRank.crab_graphs(graph, n, t)).to eq(6) }
    end

    describe 'test case 4' do
      let(:edges) { [[46, 44], [46, 10], [20, 16], [43, 21]] }
      let(:t) { 2 }
      let(:n) { 50 }

      it { expect(HackerRank.crab_graphs(graph, n, t)).to eq(7) }
    end
  end

  describe '.get_max_profit' do
    describe 'test case 1' do
      let(:stock_prices_yesterday) { [10, 7, 5, 8, 11, 9] }
      it { expect(HackerRank.get_max_profit(stock_prices_yesterday)).to eq(6) }
    end

    describe 'test case 2' do
      let(:stock_prices_yesterday) { [10, 7, 1, 8, 11, 9] }
      it { expect(HackerRank.get_max_profit(stock_prices_yesterday)).to eq(10) }
    end

    describe 'test case 3' do
      let(:stock_prices_yesterday) { [10, 7, 1, 8, 11, 9] }
      it { expect(HackerRank.get_max_profit(stock_prices_yesterday)).to eq(10) }
    end

    describe 'test case 4' do
      let(:stock_prices_yesterday) { [12, 10, 9, 8, 7, 6, 5] }
      it { expect(HackerRank.get_max_profit(stock_prices_yesterday)).to eq(0) }
    end
  end

  describe '.product_of_other_numbers' do
    describe 'test case 1' do
      let(:array) { [1, 7, 3, 4] }
      let(:expected_array) { [84, 12, 28, 21] }
      let(:product) { HackerRank.product_of_other_numbers(array) }
      it { expect(product).to eq(expected_array) }
    end

    describe 'test case 2' do
      let(:array) { [1, 2, 6, 5, 9] }
      let(:expected_array) { [540, 270, 90, 108, 60] }
      let(:product) { HackerRank.product_of_other_numbers(array) }
      it { expect(product).to eq(expected_array) }
    end

    describe 'test case 3' do
      let(:array) { [1, 7, 3, 0, 4] }
      let(:expected_array) { [0, 0, 0, 84, 0] }
      let(:product) { HackerRank.product_of_other_numbers(array) }
      it { expect(product).to eq(expected_array) }
    end
  end

  describe '.condense_meetings' do
    describe 'test case 1' do
      let(:meetings) { [[0, 1], [3, 5], [4, 8], [10, 12], [9, 10]] }
      let(:expected) { [[0, 1], [3, 8], [9, 12]] }
      it { expect(HackerRank.condense_meetings(meetings)).to eq(expected) }
    end

    describe 'test case 2' do
      let(:meetings) { [[2, 3], [6, 9]] }
      let(:expected) { [[2, 3], [6, 9]] }
      it { expect(HackerRank.condense_meetings(meetings)).to eq(expected) }
    end

    describe 'test case 3' do
      let(:meetings) { [[1, 2], [2, 3]] }
      let(:expected) { [[1, 3]] }
      it { expect(HackerRank.condense_meetings(meetings)).to eq(expected) }
    end

    describe 'test case 4' do
      let(:meetings) { [[1, 10], [2, 6], [3, 5], [7, 9]] }
      let(:expected) { [[1, 10]] }
      it { expect(HackerRank.condense_meetings(meetings)).to eq(expected) }
    end

    describe 'test case 5' do
      let(:meetings) { [[1, 3], [2, 4]] }
      let(:expected) { [[1, 4]] }
      it { expect(HackerRank.condense_meetings(meetings)).to eq(expected) }
    end
  end

  describe '.bst_lca' do
    describe 'test case 1' do
      let(:tree) do
        t = BstTree.new
        t.add(20)
        t.add(22)
        t.add(8)
        t.add(12)
        t.add(4)
        t.add(14)
        t.add(10)
        t
      end

      it { expect(HackerRank.bst_lca(tree, 10, 14)).to eq(12) }
      it { expect(HackerRank.bst_lca(tree, 14, 8)).to eq(8) }
      it { expect(HackerRank.bst_lca(tree, 10, 22)).to eq(20) }
    end

    describe 'test case 2' do
      let(:tree) do
        t = BstTree.new
        t.add(5)
        t.add(3)
        t.add(7)
        t.add(1)
        t.add(4)
        t.add(6)
        t.add(10)
        t.add(8)
        t
      end

      it { expect(HackerRank.bst_lca(tree, 6, 8)).to eq(7) }
      it { expect(HackerRank.bst_lca(tree, 1, 8)).to eq(5) }
      it { expect(HackerRank.bst_lca(tree, 10, 4)).to eq(5) }
      it { expect(HackerRank.bst_lca(tree, 10, 6)).to eq(7) }
      it { expect(HackerRank.bst_lca(tree, 10, 8)).to eq(10) }
      it { expect(HackerRank.bst_lca(tree, 10, 11)).to eq(-1) }
    end
  end

  describe '.xor_se' do
    it { expect(HackerRank.xor_se(2, 4)).to eq(7) }
    it { expect(HackerRank.xor_se(2, 8)).to eq(9) }
    it { expect(HackerRank.xor_se(5, 9)).to eq(15) }
    it { expect(HackerRank.xor_se(3, 8)).to eq(10) }
    it { expect(HackerRank.xor_se(8, 10)).to eq(2) }
  end

  describe '.candies' do
    describe 'test case 1' do
      let(:ratings) { [1, 2, 2] }
      it { expect(HackerRank.candies(ratings.length, ratings)).to eq(4) }
    end

    describe 'test case 2' do
      let(:ratings) { [1, 2] }
      it { expect(HackerRank.candies(ratings.length, ratings)).to eq(3) }
    end

    describe 'test case 3' do
      let(:ratings) { [2, 4, 2, 6, 1, 7, 8, 9, 2, 1] }
      it { expect(HackerRank.candies(ratings.length, ratings)).to eq(19) }
    end

    describe 'test case 4' do
      let(:ratings) { [2, 4, 6, 7, 8, 9, 1] }
      it { expect(HackerRank.candies(ratings.length, ratings)).to eq(22) }
    end

    describe 'test case 5' do
      let(:ratings) { [10] }
      it { expect(HackerRank.candies(ratings.length, ratings)).to eq(1) }
    end

    describe 'test case 5' do
      let(:ratings) { [10, 11, 1] }
      it { expect(HackerRank.candies(ratings.length, ratings)).to eq(4) }
    end
  end

  describe '.unbounded_knapsack_sum' do
    let(:knapsack_sum) { HackerRank.unbounded_knapsack_sum(array, max_amount) }

    describe 'test case 1' do
      let(:array) { [1, 6, 9] }
      let(:max_amount) { 12 }
      it { expect(knapsack_sum).to eq(12) }
    end

    describe 'test case 2' do
      let(:array) { [3, 4, 4, 4, 8] }
      let(:max_amount) { 9 }
      it { expect(knapsack_sum).to eq(9) }
    end

    describe 'test case 3' do
      let(:array) { [4, 4, 4, 4, 8] }
      let(:max_amount) { 9 }
      it { expect(knapsack_sum).to eq(8) }
    end

    describe 'test case 4' do
      let(:max_amount) { 9 }
      let(:array) { [3, 2, 4] }
      it { expect(knapsack_sum).to eq(9) }
    end

    describe 'test case 5' do
      let(:max_amount) { 12 }
      let(:array) { [3, 10, 4] }
      it { expect(knapsack_sum).to eq(12) }
    end

    describe 'test case 6' do
      let(:max_amount) { 13 }
      let(:array) { [3, 10, 4] }
      it { expect(knapsack_sum).to eq(13) }
    end

    describe 'test case 7' do
      let(:max_amount) { 16 }
      let(:array) { [3, 10, 4] }
      it { expect(knapsack_sum).to eq(16) }
    end

    describe 'test case 8' do
      let(:max_amount) { 2000 }
      let(:array) { [2000, 2000, 2000] }
      it { expect(knapsack_sum).to eq(2000) }
    end

    describe 'test case 9' do
      let(:max_amount) { 9 }
      let(:array) { [9, 9, 9] }
      it { expect(knapsack_sum).to eq(9) }
    end

    describe 'test case 10' do
      let(:max_amount) { 8 }
      let(:array) { [9, 9, 9] }
      it { expect(knapsack_sum).to eq(0) }
    end

    describe 'test case 11' do
      let(:max_amount) { 6 }
      let(:array) { [5] }
      it { expect(knapsack_sum).to eq(5) }
    end

    describe 'test case 12' do
      let(:max_amount) { 8 }
      let(:array) { [3, 3, 3, 3, 3, 3] }
      it { expect(knapsack_sum).to eq(6) }
    end

    describe 'test case 13' do
      let(:max_amount) { 10 }
      let(:array) { [9, 4, 4, 9, 4, 9, 9, 9, 9] }
      it { expect(knapsack_sum).to eq(9) }
    end

    describe 'test case 14' do
      let(:max_amount) { 2000 }
      let(:array) { [1] }
      it { expect(knapsack_sum).to eq(2000) }
    end

    describe 'test case 15' do
      let(:max_amount) { 10 }
      let(:array) { [5, 9] }
      it { expect(knapsack_sum).to eq(10) }
    end

    describe 'test case 16' do
      let(:max_amount) { 2000 }
      let(:array) { [2, 1] }
      it { expect(knapsack_sum).to eq(2000) }
    end

    describe 'test case 17' do
      let(:max_amount) { 2000 }
      let(:array) { [1999, 1999] }
      it { expect(knapsack_sum).to eq(1999) }
    end

    describe 'test case 18' do
      let(:max_amount) { 3 }
      let(:array) { [4, 4, 5] }
      it { expect(knapsack_sum).to eq(0) }
    end
  end

  describe '.red_john_is_back' do
    it { expect(HackerRank.red_john_is_back(1)).to eq(0) }
    it { expect(HackerRank.red_john_is_back(3)).to eq(0) }
    it { expect(HackerRank.red_john_is_back(4)).to eq(1) }
    it { expect(HackerRank.red_john_is_back(5)).to eq(2) }
    it { expect(HackerRank.red_john_is_back(6)).to eq(2) }
    it { expect(HackerRank.red_john_is_back(7)).to eq(3) }
    it { expect(HackerRank.red_john_is_back(8)).to eq(4) }
    it { expect(HackerRank.red_john_is_back(9)).to eq(4) }
    it { expect(HackerRank.red_john_is_back(10)).to eq(6) }
    it { expect(HackerRank.red_john_is_back(12)).to eq(9) }
    it { expect(HackerRank.red_john_is_back(13)).to eq(11) }
    it { expect(HackerRank.red_john_is_back(14)).to eq(15) }
    it { expect(HackerRank.red_john_is_back(15)).to eq(19) }
    it { expect(HackerRank.red_john_is_back(16)).to eq(24) }
    it { expect(HackerRank.red_john_is_back(17)).to eq(32) }
    it { expect(HackerRank.red_john_is_back(18)).to eq(42) }
    it { expect(HackerRank.red_john_is_back(19)).to eq(53) }
    it { expect(HackerRank.red_john_is_back(21)).to eq(91) }
    it { expect(HackerRank.red_john_is_back(23)).to eq(155) }
    it { expect(HackerRank.red_john_is_back(25)).to eq(269) }
    it { expect(HackerRank.red_john_is_back(24)).to eq(204) }
    it { expect(HackerRank.red_john_is_back(26)).to eq(354) }
    it { expect(HackerRank.red_john_is_back(27)).to eq(462) }
    it { expect(HackerRank.red_john_is_back(28)).to eq(615) }
    it { expect(HackerRank.red_john_is_back(30)).to eq(1077) }
    it { expect(HackerRank.red_john_is_back(31)).to eq(1432) }
    it { expect(HackerRank.red_john_is_back(34)).to eq(3385) }
    it { expect(HackerRank.red_john_is_back(35)).to eq(4522) }
    it { expect(HackerRank.red_john_is_back(36)).to eq(6048) }
    it { expect(HackerRank.red_john_is_back(37)).to eq(8078) }
    it { expect(HackerRank.red_john_is_back(38)).to eq(10794) }
    it { expect(HackerRank.red_john_is_back(39)).to eq(14475) }
    it { expect(HackerRank.red_john_is_back(40)).to eq(19385) }
  end

  describe '.number_of_divisors' do
    it { expect(HackerRank.number_of_divisors(1)).to eq(1) }
    it { expect(HackerRank.number_of_divisors(3)).to eq(2) }
    it { expect(HackerRank.number_of_divisors(6)).to eq(4) }
    it { expect(HackerRank.number_of_divisors(10)).to eq(4) }
    it { expect(HackerRank.number_of_divisors(15)).to eq(4) }
    it { expect(HackerRank.number_of_divisors(21)).to eq(4) }
    it { expect(HackerRank.number_of_divisors(28)).to eq(6) }
    it { expect(HackerRank.number_of_divisors(48)).to eq(10) }
    it { expect(HackerRank.number_of_divisors(842161320)).to eq(1024) }
  end

  describe '.counting_sundays' do
    describe 'test case 1' do
      let(:params) { [1900, 1, 1, 1910, 1, 1] }
      it { expect(HackerRank.counting_sundays(*params)).to eq(18) }
    end

    describe 'test case 2' do
      let(:params) { [2000, 1, 1, 2020, 1, 1] }
      it { expect(HackerRank.counting_sundays(*params)).to eq(35) }
    end

    describe 'test case 3' do
      let(:params) { [1988, 3, 25, 1989, 7, 13] }
      it { expect(HackerRank.counting_sundays(*params)).to eq(2) }
    end

    describe 'test case 4' do
      let(:params) { [1924, 6, 6, 1925, 6, 16] }
      it { expect(HackerRank.counting_sundays(*params)).to eq(2) }
    end

    describe 'test case 5' do
      let(:params) { [1000000000000, 2, 2, 1000000001000, 3, 2] }
      it { expect(HackerRank.counting_sundays(*params)).to eq(1720) }
    end

    describe 'test case 6' do
      let(:params) { [2015, 2, 1, 2015, 3, 1] }
      it { expect(HackerRank.counting_sundays(*params)).to eq(2) }
    end

    describe 'test case 7' do
      let(:params) { [1925, 2, 1, 1925, 3, 1] }
      it { expect(HackerRank.counting_sundays(*params)).to eq(2) }
    end

    describe 'test case 8' do
      let(:params) { [1901, 1, 1, 1910, 12, 31] }
      it { expect(HackerRank.counting_sundays(*params)).to eq(17) }
    end
  end

  describe '.lpermutation' do
    it { expect(HackerRank.lpermutation('abc', 1)).to eq('abc') }
    it { expect(HackerRank.lpermutation('abc', 2)).to eq('acb') }
    it { expect(HackerRank.lpermutation('abc', 3)).to eq('bac') }
    it { expect(HackerRank.lpermutation('abc', 4)).to eq('bca') }
    it { expect(HackerRank.lpermutation('abc', 5)).to eq('cab') }
    it { expect(HackerRank.lpermutation('abc', 6)).to eq('cba') }
    it { expect(HackerRank.lpermutation('abcdefghijklm', 1)).to eq('abcdefghijklm') }
    it { expect(HackerRank.lpermutation('abcdefghijklm', 2)).to eq('abcdefghijkml') }
  end
end
