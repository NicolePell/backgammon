require 'point'

describe Point do

  let(:point) { Point.new }
  let(:red) { double :checker, colour: :red }
  let(:black) { double :checker, colour: :black }

  context 'when initialized' do
    it 'is unoccupied' do
      expect(point.status).to be :empty
    end
  end

  context 'holding checkers' do
    it 'it can accept a checker' do
      point.place(red)
      expect(point.checkers.count).to eq 1
    end

    it 'status changes from empty to occupied when a checker is placed' do
      point.place(red)
      expect(point.status).to be :occupied
    end

    it 'knows how many checkers it holds' do
      3.times { point.place(red) }
      expect(point.checker_count).to eq 3
    end

    it 'status is full when occupied by 5 checkers' do
      5.times { point.place(red) }
      expect(point.status).to be :full
    end

    it "can't hold more than 5 checkers" do
      5.times { point.place(red) }
      expect(lambda {point.place(red)}).to raise_error(RuntimeError, 'Point is full')
    end
  end

  context 'when a point is occupied and an opponent checker tries to land' do
    it 'knows what colour checkers are placed on it' do
      point.place(red)
      expect(point.checker_colour).to eq :red
    end

    it 'should not let an opponent colour land on it' do
      2.times { point.place(red) }
      p point.checker_colour
      expect(lambda {point.place(black)}).to raise_error(RuntimeError, 'Occupied')
    end
  end

end
