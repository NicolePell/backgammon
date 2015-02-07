class Point

  attr_reader :status, :checkers

  def initialize(status=:empty)
    @status = status
    @checkers = []
  end

  def place(checker)
    checkers << checker
    @status = :occupied
  end

end
