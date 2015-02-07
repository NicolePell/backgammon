require 'point'

describe Point do

  let(:point) { Point.new }
  let(:red) { double :checker, colour: :red }

  context 'upon initialize' do
    it 'a point is unoccupied' do
      expect(point.status).to be :empty
    end
  end

  context 'checkers placed on point' do
    it 'a checker can move to an empty point' do
      point.place(red)
      expect(point.status).to be :occupied
    end
  end

end
