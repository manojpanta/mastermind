require_relative 'guess'
require_relative 'sequence'
class Mastermind
  attr_reader :right_guesses, :guesses, :thing
  def initialize
    @thing = Combination.new
    @guesses = []
    @right_guesses = 0
  end

  def record_guesses(answer)

    @guesses << answer
    if answer.correct?
      @right_guesses += 1
    end
    @guesses.count

  end

  def initial_input
    puts header
    answer = gets.chomp.downcase
      if answer == "p"
        starter
        game_over
      elsif answer == "i"
        instructions
        starter
      else answer == "q"
        footer
        abort
      end
  end



  def play
    answer = gets.chomp.to_s
    if answer == "cheat"
      puts thing.sequence
    elsif answer == "q"
      footer
    else
      guess1 = Guess.new(answer, @thing.sequence)
      record_guesses(guess1)
      puts guess1.feedback
    end
    until @right_guesses == 1
      puts "do You want to continue? Enter Y for Yes , N for No"
      answer = gets.chomp.downcase
      if answer == "y"
        starter
      elsif answer == "n"
        footer
        abort
      else
        puts "Nope not that im looking for"
      end
    end
  end

  def game_over
      puts "Awesome you got it right in #{(@guesses.length)+1} attempt"
      percentage
      puts "------------------!!!!!!!GAME OVER!!!!!!!!------------------"

  end

  def percentage
    name = ((@right_guesses.to_f/@guesses.length)*100).to_i
    puts " You Have Scored #{name}%"
  end


  def header
    "\nWelcome to MASTERMIND\n"\
    "Would you like to (p)lay, read the (i)nstructions,"\
    " or (q)uit?"\
  end

  def guess_again
    puts"Do you want to continue guessing?"
  end

  def starter
    puts "I have generated a beginner sequence with four elements made "\
    " up of: (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time "\
    "to end the game.What's your guess?"
    play
  end

  def instructions
    puts "MasterMind consists of the colors Red, Green, Blue,"\
    "and Yellow "
  end

  def footer
    puts "OHH OK !! see you soon!!"
    abort
  end
end
