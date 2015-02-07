require 'point'

describe Point do

  let(:point) { Point.new }

  context 'upon initialize' do
    it 'a point is unoccupied' do
      expect(point.status).to be :empty
    end
  end

end
