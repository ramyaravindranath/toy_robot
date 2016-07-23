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

  def get_new_position
    case @facing
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
    Position.new(@x + 1, @y, @facing)
  end

  def move_west
    Position.new(@x - 1, @y, @facing)
  end

  def move_north
    Position.new(@x, @y + 1, @facing)
  end

  def move_south
    Position.new(@x, @y - 1, @facing)
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
