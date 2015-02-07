require 'point'

describe Point do

  let(:point) { Point.new }
  let(:red) { double :checker, colour: :red }

  context 'upon initialize' do
    it 'a point is unoccupied' do
      expect(point.status).to be :empty
    end
  end

  context 'when checkers are placed on a point' do
    it "it's status changes from empty to occupied" do
      point.place(red)
      expect(point.status).to be :occupied
    end

    it 'it can hold the checker' do
      point.place(red)
      expect(point.checkers.length).to eq 1
    end
  end

end
