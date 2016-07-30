require_relative './test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/position'
# Test class for position functionalities
class PositionTest < Minitest::Test
  def test_move_east
    position = Position.new(0, 0, 'EAST')
    new_position = position.move_east(position)
    assert_equal new_position.x, 1
  end

  def test_do_not_move_east
    position = Position.new(4, 0, 'EAST')
    new_position = position.move_east(position)
    assert_equal new_position.x, 4
  end

  def test_do_not_move_west
    position = Position.new(0, 0, 'WEST')
    new_position = position.move_west(position)
    assert_equal new_position.x, 0
  end

  def test_move_west
    position = Position.new(4, 0, 'WEST')
    new_position = position.move_west(position)
    assert_equal new_position.x, 3
  end

  def test_do_not_move_north
    position = Position.new(2, 4, 'NORTH')
    new_position = position.move_north(position)
    assert_equal new_position.y, 4
  end

  def test_move_north
    position = Position.new(2, 3, 'NORTH')
    new_position = position.move_north(position)
    assert_equal new_position.y, 4
  end

  def test_move_south
    position = Position.new(2, 2, 'SOUTH')
    new_position = position.move_south(position)
    assert_equal new_position.y, 1
  end

  def test_do_not_move_south
    position = Position.new(2, 0, 'SOUTH')
    new_position = position.move_south(position)
    assert_equal new_position.y, 0
  end

  def test_turn_left
    position = Position.new(2, 4, 'NORTH')
    new_position = position.turn_left
    assert_equal new_position.facing, 'WEST'
  end

  def test_turn_right
    position = Position.new(2, 4, 'EAST')
    new_position = position.turn_right
    assert_equal new_position.facing, 'SOUTH'
  end
end
