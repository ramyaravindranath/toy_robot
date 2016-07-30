require_relative './test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/table'
require './lib/position'
require './lib/command'
# Test class for Command class functionalities
class CommandTest < Minitest::Test
  def test_execute_place_command
    table = Table.new
    command = Command.new(table)
    input = 'PLACE 3,4,SOUTH'
    position = command.execute(input)
    assert_equal position.facing, 'SOUTH'
  end

  def test_execute_move_command
    table = Table.new
    command = Command.new(table)
    input = 'PLACE 3,4,SOUTH'
    input1 = 'MOVE'
    command.execute(input)
    position = command.execute(input1)
    assert_equal position.y, 3
  end
end
