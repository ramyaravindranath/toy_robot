class Position
  attr_accessor:x
  attr_accessor:y
  attr_accessor:direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

  def get_new_position
    case @direction
    when 'NORTH'
      move_north
    when 'EAST'
      move_east
    when 'SOUTH'
      move_south
    when 'WEST'
      move_west
    end
  end

  def move_east
    Position.new(@x+1,@y,@direction)
  end
end
