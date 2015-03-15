require 'dice'

describe Dice do

  let(:dice) { Dice.new }

  context 'when rolled' do

    before(:each) do
      srand(6)
    end

    xit 'will return 2 number between one and six' do
      expect(dice.roll).to eq [6, 4]
    end

    xit 'sums dice roll' do
      expect(dice.roll_total).to eq 12
    end

    xit 'returns double the value for a double' do
      expect(dice.roll_total).to eq 24
    end
  end

end
