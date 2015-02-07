require 'board'

describe Board do

  let(:board) { Board.new }

  context 'when initialized' do
    it 'has 24 points' do
      expect(board.points.count).to eq 24
    end
  end

end
