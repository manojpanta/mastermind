require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'
require './lib/sequence'
# require './lib/text_files'

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
    require'pry' ; binding.pry
    assert_equal 1, mastermind.record_guesses(guess)
    assert_equal "Incorrect.", mastermind.initial_input


  end



  # def test_right_guesses
  #   assert_equal "p", @mastermind.initial_response("p")
  # end








end
