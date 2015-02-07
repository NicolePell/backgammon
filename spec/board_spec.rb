require 'board'

describe Board do

  let(:board) { Board.new }
  let(:point) { double :point }

  context 'when starting game' do
    it 'has 24 points' do
      board.fill_points(point)
      expect(board.points.count).to eq 24
    end
  end

end
