require_relative './test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/robot'
require './lib/table'
require './lib/position'
# Test class for table functionalities
class TableTest < Minitest::Test
  def test_check_valid_position
    table = Table.new
    position = Position.new(1, 3, 'SOUTH')
    assert table.valid_position?(position)
  end

  def test_check_invalid_position
    table = Table.new
    position = Position.new(5, 4, 'SOUTH')
    refute table.valid_position?(position)
  end
end
