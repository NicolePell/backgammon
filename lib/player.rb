require_relative 'checker'

class Player

  attr_reader :name, :checkers

  def initialize(name)
    @name = name
    @checkers = []
  end

  def start_checkers(checker)
    15.times { @checkers << checker }
  end

end
