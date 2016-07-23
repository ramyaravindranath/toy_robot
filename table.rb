class Table
  attr_accessor:length
  attr_accessor:breadth


  def initialize(robot)
    @robot=robot
    self.length=5
    self.breadth=5
  end

  def place?
    return true if (@robot.x==0 && @robot.y==0)
  end
end
