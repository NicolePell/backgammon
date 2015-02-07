require_relative 'point'

class Board

  attr_reader :points

  def initialize
    @points = []
  end

  def fill_points(point)
    24.times { points << Point.new }
    points
  end
end
