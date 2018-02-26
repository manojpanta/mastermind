require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'
require './lib/combination'

class MastermindTest < MiniTest::Test

  def test_if_exists
    combination = Combination.new
    guess = Guess.new("mano", combination)
    mastermind = Mastermind.new
    assert_instance_of Mastermind, mastermind
  end

  def test_guesses
    combination = Combination.new
    guess = Guess.new("rgby", combination)
    mastermind = Mastermind.new
    assert_equal 1, mastermind.record_guesses(guess)
  end
end
