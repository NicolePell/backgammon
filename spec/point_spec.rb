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

    before(:each) do
      point.place(red)
    end

    it 'it can accept a checker' do
      expect(point.checkers.count).to eq 1
    end

    it 'status changes from empty to occupied when a checker is placed' do
      expect(point.status).to be :occupied
    end

    it 'knows how many checkers it holds' do
      2.times { point.place(red) }
      expect(point.checker_count).to eq 3
    end

    it 'status is full when occupied by 5 checkers' do
      4.times { point.place(red) }
      expect(point.status).to be :full
    end

    it "can't hold more than 5 checkers" do
      4.times { point.place(red) }
      expect(lambda {point.place(red)}).to raise_error(RuntimeError, 'Point is full')
    end
  end

  context 'when occupied and an opponent checker tries to land' do
    before(:each) do
      point.place(red)
    end

    it 'knows what colour checkers are placed on it' do
      expect(point.checker_colour).to eq :red
    end

    it 'should not let an opponent colour land on it' do
      2.times { point.place(red) }
      expect(lambda {point.place(black)}).to raise_error(RuntimeError, 'Occupied')
    end

    it 'should kick the opponent colour off the point when only one checker' do
      point.place(black)
      expect(point.checker_colour).to eq :black
    end

    it 'should let an opponent colour land if there is only one checker' do
      point.place(black)
      expect(point.checkers[0].colour).to eq :black
    end
  end

end
