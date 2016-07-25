# This is Robot class
class Robot
  attr_accessor:position
  attr_accessor:table

  def initialize(position, table)
    @position = position
    @table = table
  end

  def placed?
    table.valid_position?(position)
  end

  def move
    @position = position.get_new_position(position) if placed?
  end

  def turn_left
    @position = position.turn_left if placed?
  end

  def turn_right
    @position = position.turn_right if placed?
  end

  def report
    position
  end
end