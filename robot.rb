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
    new_position = position.get_new_position if placed?
    @position = new_position
  end

  def turn_left
    @position = position.turn_left if placed?
  end

  def turn_right
    @position = position.turn_right if placed?
  end
end
