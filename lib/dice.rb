class Dice

  attr_reader :dice_count

  def initialize
    @dice_count = []
  end

  def roll
    2.times { dice_count << ( rand(6) + 1 ) }
    dice_count
  end

  def roll_total
    if dice_count[0] == dice_count[1]
      dice_count.inject { |sum, dice| (sum + dice) * 2 }
    else
      dice_count.inject { |sum, dice| sum + dice }
    end
  end

end
