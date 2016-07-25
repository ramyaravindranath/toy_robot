require_relative './test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/robot'
require './lib/table'
require './lib/position'

class TableTest < Minitest::Test
  def test_check_valid_position
    table = Table.new
    position = Position.new(1, 3, 'SOUTH')
    assert_equal table.valid_position?(position), true
  end

  def test_check_invalid_position
    table = Table.new
    position = Position.new(5, 4, 'SOUTH')
    assert_equal table.valid_position?(position), false
  end
end
