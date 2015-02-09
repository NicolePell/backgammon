require 'board'

describe Board do

  let(:board) { Board.new }
  let(:point) { double :point }

  context 'when starting game' do
    it 'can add point' do
      board.add_point
      expect(board.points.count).to eq 1
    end
  end

end
