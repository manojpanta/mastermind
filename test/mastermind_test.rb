require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'
# require './lib/text_files'

class MastermindTest < MiniTest::Test
  def setup
    @mastermind = Mastermind.new
  end

  def test_if_exists
    assert_instance_of Mastermind, @mastermind
  end

  def test_right_guesses
    assert_equal "p", @mastermind.initial_response("p")
  end








end
