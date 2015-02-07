require 'player'

describe Player do


  let(:player) { Player.new('Naruto') }
  let(:red) { Checker.new(:red) }

  context 'when initializing' do
    it 'has a name' do
      expect(player.name).to eq 'Naruto'
    end
  end

  context 'when starting game' do
    it 'can hold 15 checkers' do
      player.start_checkers(red)
      expect(player.checkers.count).to eq 15
    end

    it 'knows what colour checkers it has' do
      player.start_checkers(red)
      expect(player.checkers[0].colour).to eq :red
    end
  end

end
