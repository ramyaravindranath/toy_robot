require 'minitest/autorun'
require 'minitest/pride'
require './robot'
require './table'
require './position'

class TableTest < Minitest::Test
  def test_check_valid_position
    table = Table.new
    position = Position.new(1, 3)
    assert_equal table.valid_position?(position), true
  end

  def test_check_invalid_position
    table = Table.new
    position = Position.new(5, 4)
    assert_equal table.valid_position?(position), false
  end
end
