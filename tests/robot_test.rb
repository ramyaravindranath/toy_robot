require_relative './test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/table'
require './lib/position'
require './lib/robot'
# Test class for robot functionalities
class RobotTest < Minitest::Test
  def test_move_toward_east
    table = Table.new
    position = Position.new(0, 0, 'EAST')
    robot = Robot.new(table)
    robot.place(position)
    robot.move
    assert_equal robot.position.x, 1
  end

  def test_move_toward_west
    table = Table.new
    position = Position.new(1, 0, 'WEST')
    robot = Robot.new(table)
    robot.place(position)
    robot.move
    assert_equal robot.position.x, 0
  end

  def test_move_toward_north
    table = Table.new
    position = Position.new(1, 0, 'NORTH')
    robot = Robot.new(table)
    robot.place(position)
    robot.move
    assert_equal robot.position.y, 1
  end

  def test_move_toward_south
    table = Table.new
    position = Position.new(1, 1, 'SOUTH')
    robot = Robot.new(table)
    robot.place(position)
    robot.move
    assert_equal robot.position.y, 0
  end

  def test_not_move_towards_east
    table = Table.new
    position = Position.new(4, 0, 'EAST')
    robot = Robot.new(table)
    robot.place(position)
    robot.move
    assert_equal robot.position.x, 4
  end

  def test_turn_left
    table = Table.new
    position = Position.new(0, 3, 'NORTH')
    robot = Robot.new(table)
    robot.place(position)
    robot.turn_left
    assert_equal robot.position.facing, 'WEST'
  end

  def test_turn_right
    table = Table.new
    position = Position.new(0, 3, 'NORTH')
    robot = Robot.new(table)
    robot.place(position)
    robot.turn_right
    assert_equal robot.position.facing, 'EAST'
  end

  def test_report_when_not_moved
    table = Table.new
    position = Position.new(4, 0, 'EAST')
    robot = Robot.new(table)
    robot.place(position)
    robot.move
    assert_equal robot.position.x, position.x
  end
end
