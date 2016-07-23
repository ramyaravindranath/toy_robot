require 'minitest/autorun'
require 'minitest/pride'
require './table'
require './position'
require './robot'

class RobotTest < Minitest::Test
  def test_is_robot_placed
    table = Table.new
    position = Position.new(3, 4, 'EAST')
    robot = Robot.new(position, table)
    assert_equal robot.placed?, true
  end

  def test_is_robot_not_placed
    table = Table.new
    position = Position.new(5, 4, 'SOUTH')
    robot = Robot.new(position, table)
    assert_equal robot.placed?, false
  end

  def test_move
    table = Table.new
    position = Position.new(0, 0, 'EAST')
    robot = Robot.new(position, table)
    robot.move
    new_position = Position.new(1, 0, 'EAST')
    assert_equal robot.position.x, new_position.x
  end
end
