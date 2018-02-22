# require './lib/text_files'
require_relative 'guess'
require_relative 'sequence'
class Mastermind
  attr_reader :right_guesses, :current_count, :guesses
  def initialize
    # @combination = combination
    @guesses = []
    @current_count = 0
    @right_guesses = 0
  end

  def record_guesses(answer)

    @guesses << answer.response
    # @guesses << answer
    @current_count += 1
    if answer.correct?
      @right_guesses += 1
    end
    require'pry' ; binding.pry
    @guesses.count






  end





  def start
    puts header
    answer = gets.chomp
    if %["p" "play"].include?(answer.to_s)
      puts starter
      answer1 = gets.chomp
      if answer1.length > 3
          @guesses << answer1
          if correct?(answer1)
            @right_guesses += 1
          end
                  # require 'pry' ; binding.pry
      elsif
        "gameover"
      end
    elsif %["i" "instructions"].include?(answer.to_s)
      puts instructions
    else
      puts "Alright !!! See you later"
    end
    # puts percentage
  end

  def play
    header

    starter
    instructions
    start
    percentage
  end

  def percentage
    name = ((@right_guesses.length.to_f/@guesses.length)*100)
    puts " You Have Scored #{name}%"
  end


  def header
    "\nWelcome to MASTERMIND\n"\
    "Would you like to (p)lay, read the (i)nstructions,"\
    " or (q)uit?"\
  end

  def starter
    puts "I have generated a beginner sequence with four elements made "\
    " up of: (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time "\
    "to end the game.What's your guess?"


  end

  def instructions
    puts "MasterMind consists of the colors Red, Green, Blue,"\
   "and Yellow "
  end
end
