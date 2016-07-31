# This is Robot class
class Robot
  attr_reader :position
  attr_reader :table

  def initialize(table)
    @table = table
  end

  def place(position)
    @position = position if table.valid_position?(position)
  end

  def placed?
    !@position.nil?
  end

  def move
    @position = position.get_new_position(@position) if placed?
  end

  def turn_left
    @position = position.turn_left if placed?
  end

  def turn_right
    @position = position.turn_right if placed?
  end

  def report
    puts "#{position.x},#{position.y},#{position.facing}" if placed?
  end
end
