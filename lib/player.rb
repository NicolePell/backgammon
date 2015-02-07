require_relative 'checker'

class Player

  attr_reader :name, :checkers

  def initialize(name, colour)
    @name = name
    @checkers = Array.new(15, Checker.new(colour))
  end

end
