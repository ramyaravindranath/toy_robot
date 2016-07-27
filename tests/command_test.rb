require_relative './test_helper'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/robot'
require './lib/table'
require './lib/position'
require './lib/command'


class CommandTest < Minitest::Test

  def test_is_valid_input
    input = "RIGHT"
    command = Command.new
    assert_equal command.is_valid_input(input), true
  end

end
