require 'spec_helper'

describe GridSearch do
  describe 'test case 1' do
    let(:grid) do
      [
        '7283455864',
        '6731158619',
        '8988242643',
        '3830589324',
        '2229505813',
        '5633845374',
        '6473530293',
        '7053106601',
        '0834282956',
        '4607924137'
      ]
    end

    let(:pattern) do
      [
        '9505',
        '3845',
        '3530'
      ]
    end

    it { expect(GridSearch.new(grid, pattern).present?).to be true }
  end

  describe 'test case 2' do
    let(:grid) do
      [
        '400453592126560',
        '114213133098692',
        '474386082879648',
        '522356951189169',
        '887109450487496',
        '252802633388782',
        '502771484966748',
        '075975207693780',
        '511799789562806',
        '404007454272504',
        '549043809916080',
        '962410809534811',
        '445893523733475',
        '768705303214174',
        '650629270887160'
      ]
    end

    let(:pattern) do
      [
        '99',
        '99'
      ]
    end

    it { expect(GridSearch.new(grid, pattern).present?).to be false }
  end

  describe 'test case 3' do
    let(:grid) do
      [
        '123412',
        '561212',
        '123634',
        '781288'
      ]
    end

    let(:pattern) do
      [
        '12',
        '34'
      ]
    end

    it { expect(GridSearch.new(grid, pattern).present?).to be true }
  end

  describe 'test case 4' do
    let(:grid) do
      [
        '561212',
        '123634',
        '781288'
      ]
    end

    let(:pattern) do
      [
        '12',
        '34'
      ]
    end

    it { expect(GridSearch.new(grid, pattern).present?).to be true }
  end
end
