require_relative 'checker'

class Player

  attr_reader :name, :checkers

  def initialize(name, colour)
    @name = name
    @checkers = []
  end

  def starting_checkers(checker, colour)
    15.times { checkers << Checker.new(colour) }
    checkers
  end

end
