require 'player'

describe Player do

  let(:player) { Player.new('Naruto') }

  context 'when initializing' do
    it 'has a name' do
      expect(player.name).to eq 'Naruto'
    end
  end
end
