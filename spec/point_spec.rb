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

    it 'it can hold a checker' do
      point.place(red)
      expect(point.checkers.count).to eq 1
    end

    it 'the point should know how many checkers it holds' do
      3.times { point.place(red) }
      expect(point.checker_count).to eq 3
    end

    it "the status should be full when occupied by 5 checkers" do
      5.times { point.place(red) }
      expect(point.status).to be :full
    end

    it "it can't hold more than 5 checkers" do
      5.times { point.place(red) }
      expect(lambda {point.place(red)}).to raise_error(RuntimeError, 'Point is full')
    end
  end

end
