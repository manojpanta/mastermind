require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/mastermind'

class MastermindTest < MiniTest::Test
  def setup
    @mastermind = Mastermind.new



  end

  def test_if_exists
    assert_instance_of Mastermind, @mastermind
  end






end
