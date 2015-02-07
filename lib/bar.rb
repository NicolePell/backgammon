class Bar

  attr_reader :checkers

  def initialize
    @checkers = []
  end

  def receive(checker)
    checkers << checker
  end

  def release(checker)
    checkers.pop
  end

end
