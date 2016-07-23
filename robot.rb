class Robot
  attr_accessor:position
  attr_accessor:table

  def initialize(position, table)
    @position = position
    @table = table
   end

  def placed?
    table.valid_position?(position)
  end
end
