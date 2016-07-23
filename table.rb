class Table
  attr_accessor:width
  attr_accessor:height
  attr_accessor:robot

  def initialize
    @width = 5
    @height = 5
  end

  def placed?(robot)
    unless valid_position?(robot.position)
      return false
    else
      @robot = robot
      return true
    end
  end

  def valid_position?(position)
    position.x.between?(0, width-1) && position.y.between?(0, height-1)
  end
end
