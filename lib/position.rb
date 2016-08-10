# This class represents position of the robot
class Position
  attr_reader :x
  attr_reader :y
  attr_reader :facing
  attr_reader :width
  attr_reader :height
  DIRECTIONS = %w(NORTH EAST SOUTH WEST).freeze

  def initialize(x, y, facing)
    @x = x
    @y = y
    @width = 5
    @height = 5
    @facing = facing
  end

  def get_new_position(current_position)
    case current_position.facing
    when 'NORTH'
      move_north(current_position)
    when 'EAST'
      move_east(current_position)
    when 'SOUTH'
      move_south(current_position)
    when 'WEST'
      move_west(current_position)
    end
  end

  def is_x_on_table? (x)
    x.between?(0, width - 1)
  end

  def is_y_on_table? (y)
    y.between?(0, height - 1)
  end

  def move_east(current_position)
    if is_x_on_table?(current_position.x + 1)
      Position.new(current_position.x + 1, y, facing)
    else
      current_position
    end
  end

  def move_west(current_position)
    if is_x_on_table?(current_position.x-1)
      Position.new(current_position.x - 1, y, facing)
    else
      current_position
    end
  end

  def move_north(current_position)
    if is_y_on_table?(current_position.y + 1)
      Position.new(x, current_position.y + 1, facing)
    else
      current_position
    end
  end

  def move_south(current_position)
    if is_y_on_table?(current_position.y - 1)
      Position.new(x, current_position.y - 1, facing)
    else
      current_position
    end
  end

  def turn_left
    new_direction = DIRECTIONS[(DIRECTIONS.index(facing) - 1) % 4]
    Position.new(x, y, new_direction)
  end

  def turn_right
    new_direction = DIRECTIONS[(DIRECTIONS.index(facing) + 1) % 4]
    Position.new(x, y, new_direction)
  end
end
