class Point

  attr_reader :status, :checkers

  def initialize(status=:empty)
    @status = status
    @checkers = []
  end

  def checker_count
    checkers.count
  end

  def status
    if checker_count == 5
      @status = :full
    elsif checker_count >= 1
      @status = :occupied
    else
      @status
    end
  end

  def place(checker)
    raise "Point is full" if status == :full
    if checkers[0] == nil
      checkers << checker
    elsif checker.colour != checker_colour && checkers.count == 1
      checkers.pop
      checkers << checker
    elsif checker.colour != checker_colour
      raise "Occupied"
    else
      checkers << checker
    end
  end

  def checker_colour
    checkers[0].colour
  end

end
