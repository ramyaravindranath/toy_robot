require_relative './test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/position'
require './lib/parser'
# Test class for parser functionality
class ParserTest < Minitest::Test
  def test_parse
    input = 'PLACE 3,4,NORTH'
    position = Parser.parse(input)
    assert_equal position.x, 3
    assert_equal position.y, 4
    assert_equal position.facing, 'WEST'
  end
end
