require "minitest/autorun"
require "minitest/pride"
# require "pry"
require "./lib/guess"
require "./lib/combination"

class GuessTest < MiniTest::Test
  def test_if_exists
    combination = Combination.new
    guess = Guess.new("rgby", combination)
    assert_instance_of Guess, guess
    assert_equal "Incorrect.", guess.feedback



  end





end
