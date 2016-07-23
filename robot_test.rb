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

  def test_move_east
    table = Table.new
    position = Position.new(0, 0, 'EAST')
    robot = Robot.new(position, table)
    robot.move
    new_position = Position.new(1, 0, 'EAST')
    assert_equal robot.position.x, new_position.x
  end

  def test_move_north
    table = Table.new
    position = Position.new(0, 3, 'NORTH')
    robot = Robot.new(position, table)
    robot.move
    new_position = Position.new(0, 4, 'EAST')
    assert_equal robot.position.x, new_position.x
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

  def test_report
    table = Table.new
    position = Position.new(0, 0, 'EAST')
    robot = Robot.new(position, table)
    robot.move
    robot.turn_left
    new_position=robot.report
    assert_equal robot.position.x,new_position.x
    assert_equal robot.position.y,new_position.y
    assert_equal robot.position.facing,'NORTH'
  end
end
