require_relative './table'
require_relative './position'
require_relative './robot'


class Command

  attr_accessor:table

  def initialize(table)
     @table = table
  end


  def is_valid_input(input)
    input.include?("PLACE") || input.include?("MOVE") || input.include?("RIGHT") || input.include?("LEFT") || input.include?("REPORT")
  end

  def execute(input)

    if input.include?("PLACE")
      place_robot(input.delete(' '))
    elsif input.include?("MOVE")
      move_robot(input.delete(' '))
    elsif input.include?("RIGHT")
      turn_robot_right(input.delete(' '))
    elsif input.include?("LEFT")
      turn_robot_left(input.delete(' '))
    elsif input.include?("REPORT")
      report_robot(input.delete(' '))
    end
  end

  def  place_robot(input)
   position_array= input.scan(/\(([^\)]+)\)/).first
   position_x=position_array[0]
   position_y=position_array[1]
   position_facing=position_array[2]
   position_obj=Position.new(position_x,position_y,position_facing)
   robot=Robot.new(position_obj,table)
  end
end
