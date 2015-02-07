require 'player'

describe Player do

  let(:player) { Player.new('Naruto', :black) }

  context 'when initialized' do
    it 'has a name' do
      expect(player.name).to eq 'Naruto'
    end
  end

  context 'when starting the game' do
    it 'will receive 15 checkers' do
      expect(player.checkers.count).to eq 15
    end

    it 'knows what colour checkers it has' do
      expect(player.checkers[0].colour).to eq :black
    end
  end

end
