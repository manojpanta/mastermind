require "minitest/autorun"
require "minitest/pride"
require "pry"
require "./lib/combination"

class CombinationTest < MiniTest::Test

  def test_if_exists
    c_generated = Combination.new("rgby")
    assert_instance_of Combination, c_generated
  end






end
