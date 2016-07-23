class Position
  attr_accessor:x
  attr_accessor:y

  def initialize(x,y)
    self.x=x
    self.y=y
  end

  def valid_position_of_x?
    x.between?(0,5)
  end

  def valid_position_of_y?
    y.between?(0,5)
  end
end
