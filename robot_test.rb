require 'minitest/autorun'
require 'minitest/pride'
require './table'
require './position'
require './robot'

class RobotTest < Minitest::Test
  def test_is_robot_placed
    table = Table.new
    position = Position.new(3, 4, "NORTH")
    robot = Robot.new(position,table)
    assert_equal robot.placed?, true
  end

  def test_is_robot_not_placed
    table = Table.new
    position = Position.new(5, 4, "SOUTH")
    robot = Robot.new(position,table)
    assert_equal robot.placed?, false
  end
end

