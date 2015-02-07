require 'dice'

describe Dice do

  let(:dice) { Dice.new }

  context 'when rolled' do

    # before(:each) do
    #   srand(6)
    # end

    xit 'will return a number between one and six' do
      expect(dice.roll).to eq 6
    end
  end

end
