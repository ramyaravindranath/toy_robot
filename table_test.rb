require 'minitest/autorun'
require 'minitest/pride'
require './robot'
require './table'


class TableTest < Minitest::Test

  def test_place_robot_on_origin
    robot=Robot.new
    table=Table.new(robot)
    assert_equal table.place?,true
  end
end
