require 'bar'

describe Bar do

  let(:bar) { Bar.new }
  let(:black) { double :checker, colour: :black }

  context 'when initialized' do
    it 'can hold checkers' do
      bar.receive(black)
      expect(bar.checkers.count).to eq 1
    end

    it 'can release checkers' do
      bar.receive(black)
      expect(bar.checkers.count).to eq 1
      bar.release(black)
      expect(bar.checkers.count).to eq 0
    end
  end

end
