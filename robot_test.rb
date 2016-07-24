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
    assert_equal robot.position.x, 1
  end

  def test_not_move
    table = Table.new
    position = Position.new(4, 0, 'EAST')
    robot = Robot.new(position, table)
    robot.move
    assert_equal robot.position.x, 4
  end

  def test_turn_left
    table = Table.new
    position = Position.new(0, 3, 'NORTH')
    robot = Robot.new(position, table)
    robot.turn_left
    assert_equal robot.position.facing, 'WEST'
  end

  def test_turn_right
    table = Table.new
    position = Position.new(0, 3, 'NORTH')
    robot = Robot.new(position, table)
    robot.turn_right
    assert_equal robot.position.facing, 'EAST'
end

  def test_report_when_moved
    table = Table.new
    position = Position.new(3, 0, 'EAST')
    robot = Robot.new(position, table)
    robot.move
    robot.turn_left
    new_position = robot.report
    assert_equal robot.position.x, new_position.x
    assert_equal robot.position.y, new_position.y
    assert_equal robot.position.facing, 'NORTH'
  end

  def test_report_when_not_moved
    table = Table.new
    position = Position.new(4, 0, 'EAST')
    robot = Robot.new(position, table)
    robot.move
    assert_equal robot.position.x, position.x
    assert_equal robot.position.y, position.y
    assert_equal robot.position.facing, position.facing
  end
end
