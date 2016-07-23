class Table
  attr_accessor:width
  attr_accessor:height
  attr_accessor:robot

  def initialize
    @width = 5
    @height = 5
  end

  def valid_position?(position)
    position.x.between?(0, width - 1) && position.y.between?(0, height - 1)
  end
end
