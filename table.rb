class Table
  attr_accessor:width
  attr_accessor:height


  def initialize(robot)
    @robot=robot
    self.width=5
    self.height=5
  end

  def placed?(position)
    (position.valid_position_of_x? && position.valid_position_of_y?)
  end
end


