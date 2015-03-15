require 'checker'

describe Checker do

  let(:black) { Checker.new(:black) }
  let(:red) { Checker.new(:red) }

  context 'when initialized' do
    it 'can be black' do
      expect(black.colour).to be :black
    end

    it 'or red' do
      expect(red.colour).to be :red
    end
  end



end
