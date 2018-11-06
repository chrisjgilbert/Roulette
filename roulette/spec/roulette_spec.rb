require 'roulette'

describe Roulette do

  let(:roulette) { described_class.new}

  describe '#roll' do
    it 'roll' do
      expect(roulette.roll).to be_between 1, 2
    end
  end

  describe '#red_or_black' do
    it 'gives black for odd' do
      allow(roulette).to receive(:roll).and_return(1)
      expect(roulette.red_or_black).to eq 'black'
    end

    it 'gives red for odd' do
      allow(roulette).to receive(:roll).and_return(2)
      expect(roulette.red_or_black).to eq 'red'
    end
  end

end
