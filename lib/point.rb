class Point

  attr_reader :status

  def initialize(status=:empty)
    @status = status
  end

  def place(checker)
    @status = :occupied
  end

end
