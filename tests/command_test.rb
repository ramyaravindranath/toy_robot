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
    input="PLACE(3,4,'SOUTH)"
    command=Command.new(table)
    assert command.place_robot(input)
  end

end
