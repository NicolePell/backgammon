class Board

  attr_reader :points, :point

  def initialize
    @points = starting_points
    @point = point
  end

  def starting_points
    {
      1 => {:red => 0, :white => 2},
      2 => {:red => 0, :white => 0},
      3 => {:red => 0, :white => 0},
      4 => {:red => 0, :white => 0},
      5 => {:red => 0, :white => 0},
      6 => {:red => 5, :white => 0},
      7 => {:red => 0, :white => 0},
      8 => {:red => 3, :white => 0},
      9 => {:red => 0, :white => 0},
      10 => {:red => 0, :white => 0},
      11 => {:red => 0, :white => 0},
      12 => {:red => 0, :white => 5},
      13 => {:red => 5, :white => 0},
      14 => {:red => 0, :white => 0},
      15 => {:red => 0, :white => 0},
      16 => {:red => 0, :white => 0},
      17 => {:red => 0, :white => 3},
      18 => {:red => 0, :white => 0},
      19 => {:red => 0, :white => 5},
      20 => {:red => 0, :white => 0},
      21 => {:red => 0, :white => 0},
      22 => {:red => 0, :white => 0},
      23 => {:red => 0, :white => 0},
      24 => {:red => 2, :white => 0}
    }
  end

  def add_point(point)
    points << point
  end
end
