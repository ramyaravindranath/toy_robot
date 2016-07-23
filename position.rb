class Position
  attr_accessor:x
  attr_accessor:y
  attr_accessor:direction

  def initialize(x, y,direction)
    @x = x
    @y = y
    @direction=direction
  end
end
