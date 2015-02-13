class Board

  attr_reader :points, :point

  def initialize
    @points = []
    @point = point
  end

  def add_point(point)
    points << point
  end
end
