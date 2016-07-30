require_relative './parser'
require_relative './robot'
require_relative './table'

# A abstract class for parse user input and execute commands.
class Command
  attr_reader :position
  attr_reader :table
  attr_reader :robot

  def initialize(table)
    @table = table
    @robot = Robot.new(table)
  end

  def execute(input)
    if input.start_with?('PLACE')
      @position = Parser.parse(input)
      robot.place(@position) unless @position.nil?
    elsif input == 'MOVE'
      robot.move
    elsif input == 'LEFT'
      @robot.turn_left
    elsif input == 'RIGHT'
      @robot.turn_right
    elsif input == 'REPORT'
      @robot.report
    else
      puts 'Invalid commad'
    end
  end
end
