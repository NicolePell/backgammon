require_relative 'point'

class Board

  attr_reader :points

  def initialize
    @points = Array.new(24, Point.new)
  end

end
