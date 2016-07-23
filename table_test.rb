require 'minitest/autorun'
require 'minitest/pride'
require './robot'
require './table'
require './position'

class TableTest < Minitest::Test
  def test_place_robot_on_table
    table = Table.new
    position = Position.new(3, 4)
    robot = Robot.new(position)
    assert_equal table.placed?(robot), true
  end

  def test_place_robot_out_of_table
    table = Table.new
    position = Position.new(5, 4)
    robot = Robot.new(position)
    assert_equal table.placed?(robot), false
end

  def test_to_check_robot
    table = Table.new
    position = Position.new(3, 4)
    robot = Robot.new(position)
    table.placed?(robot)
    assert_equal table.robot, robot
  end
end
