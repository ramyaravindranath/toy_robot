require_relative './test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/table'
require './lib/position'
require './lib/command'
require './lib/input'

# Test class for Command class functionalities
class CommandTest < Minitest::Test
  def test_execute_place_command
    table = Table.new
    command = Command.new(table)
    user_input = 'PLACE 3,4,SOUTH'
    input = Input.new(user_input)
    position = command.execute(input)
    assert_equal position.facing, 'SOUTH'
  end

  def test_execute_move_command
    table = Table.new
    command = Command.new(table)
    usr_input = 'PLACE 3,4,SOUTH'
    usr_input1 = 'MOVE'
    input = Input.new(usr_input)
    input1 = Input.new(usr_input1)
    command.execute(input)
    position = command.execute(input1)
    assert_equal position.y, 3
  end

  def test_execute_left_command
    table = Table.new
    command = Command.new(table)
    usr_input = 'PLACE 3,4,SOUTH'
    usr_input1 = 'LEFT'
    input = Input.new(usr_input)
    input1 = Input.new(usr_input1)
    command.execute(input)
    position = command.execute(input1)
    assert_equal position.facing, 'EAST'
  end

  def test_execute_right_command
    table = Table.new
    command = Command.new(table)
    usr_input = 'PLACE 3,4,SOUTH'
    usr_input1 = 'RIGHT'
    input = Input.new(usr_input)
    input1 = Input.new(usr_input1)
    command.execute(input)
    position = command.execute(input1)
    assert_equal position.facing, 'WEST'
  end
end
