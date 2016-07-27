require_relative './test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/robot'
require './lib/table'
require './lib/position'
require './lib/command'


class CommandTest < Minitest::Test

  def test_is_valid_input
    table=Table.new
    input = "RIGHT"
    command = Command.new(table)
    assert_equal command.is_valid_input(input), true
  end

  def test_place_robot
    table=Table.new
    position=Position.new(3,4,'SOUTH')
    robot=Robot.new(table,position)
    input="PLACE(3,4,'SOUTH)"
    command=Command.new(table)
    command.place_robot(input)
    assert robot
  end

end
