require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/combination"

class CombinationTest < MiniTest::Test

  def test_if_exists
    combination = Combination.new
    assert_instance_of Combination, combination
    assert_equal "mnin", combination.sequence

  end






end
