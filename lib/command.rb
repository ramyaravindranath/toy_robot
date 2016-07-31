require_relative './parser'
require_relative './robot'
require_relative './table'
require_relative './input'

# A abstract class for parse user input and execute commands.
class Command
  attr_reader :position
  attr_reader :table
  attr_reader :robot
  attr_reader :input

  def initialize(table)
    @table = table
    @robot = Robot.new(table)
  end

  def execute(input)
    if input.a_place_command?
      place(input.input)
    elsif input.a_move_command?
      move
    elsif input.a_left_command?
      left
    elsif input.a_right_command?
      right
    elsif input.a_report_command?
      report
    else
      puts 'Invalid commad'
    end
  end

  def place(input)
    @position = Parser.parse(input)
    robot.place(position) unless position.nil?
  end

  def move
    robot.move
  end

  def left
    robot.turn_left
  end

  def right
    robot.turn_right
  end

  def report
    robot.report
  end
end
