require 'minitest/autorun'
require 'minitest/pride'
require './robot'
require './table'
require './position'


class TableTest < Minitest::Test

  def test_place_robot_on_origin
    position=Position.new(0,0)
    robot=Robot.new(position)
    table=Table.new(robot)
    assert_equal table.placed?(position),true
  end

  def test_place_robot_on_table
    position=Position.new(3,4)
    robot=Robot.new(position)
    table=Table.new(robot)
    assert_equal table.placed?(position),true
  end

  def test_place_robot_out_of_table
    position=Position.new(5,6)
    robot=Robot.new(position)
    table=Table.new(robot)
    assert_equal table.placed?(position),false
  end
end
