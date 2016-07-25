class Position
  attr_accessor:x
  attr_accessor:y
  attr_accessor:facing
  DIRECTIONS = %w(NORTH EAST SOUTH WEST).freeze

  def initialize(x, y, facing)
    @x = x
    @y = y
    @facing = facing
  end

  def get_new_position(current_position)
    case @facing
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

  def move_east(current_position)
    if current_position.x.between?(0, 3)
      Position.new(current_position.x + 1, @y, facing)
    else
      current_position
    end
  end

  def move_west(current_position)
    if current_position.x.between?(1, 4)
      Position.new(current_position.x - 1, @y, facing)
    else
      current_position
    end
  end

  def move_north(current_position)
    if current_position.y.between?(0, 3)
      Position.new(@x, current_position.y + 1, facing)
    else
      current_position
    end
  end

  def move_south(current_position)
    if current_position.y.between?(1, 4)
      Position.new(@x, current_position.y - 1, facing)
    else
      current_position
    end
  end

  def turn_left
    new_direction = DIRECTIONS[(DIRECTIONS.index(facing) - 1) % 4]
    Position.new(@x, @y, new_direction)
  end

  def turn_right
    new_direction = DIRECTIONS[(DIRECTIONS.index(facing) + 1) % 4]
    Position.new(@x, @y, new_direction)
  end
end
