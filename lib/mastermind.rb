require_relative 'guess'
require_relative 'combination'
class Mastermind
  attr_reader :right_guesses, :guesses, :thing
  def initialize
    @guesses = []
    @right_guesses = 0
    @thing = Combination.new
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
    if play?(answer)
      answer_p
    elsif instructions?(answer)
      answer_i
    elsif quit?(answer)
      answer_q
    else
      puts "You did not type a valid command"
      initial_input
    end
  end

  def play?(answer)
    answer == "p" || answer == "(p)" || answer == "play"
  end

  def answer_p
    starter
    game_over
    abort
  end
  def starter
    if @guesses.length == 0
      puts "I have generated a beginner sequence with four elements made "\
      " up of: (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time "\
      "to end the game.What's your guess?"
    elsif @guesses.length >= 1
      puts"What is your next guess?"
    end
    play
  end

  def play
    answer = gets.chomp.to_s
    if answer == "cheat"
      cheat
    elsif answer == "q"
      footer
    else
      guess1 = Guess.new(answer, @thing.sequence)
      record_guesses(guess1)
      puts guess1.feedback
      puts"What is your next guess?"
    end
    until @right_guesses == 1
      play
    end
  end

  def instructions?(answer)
    answer == "i" || answer == "(i)" || answer == "instructions"
  end

  def answer_i
    instructions
    header
    starter
  end

  def instructions
    puts "MasterMind consists of the colors Red, Green, Blue,"\
    "and Yellow "
  end

  def header
    "\nWelcome to MASTERMIND\n"\
    "Would you like to (p)lay, read the (i)nstructions,"\
    " or (q)uit?"\
  end



  def quit?(answer)
    answer == "q" || answer == "(q)" || answer == "quit"
  end

  def answer_q
    footer
    abort
  end

  def footer
    puts "OHH OK !! see you soon!!"
  end



  def cheat
    puts "You Cheater!!! The answer is ((#{thing.sequence}))"
    puts "I am kicking you back to start."
    # @guesses = []
    # @thing = Combination.new
    initial_input
  end

  def game_over
    puts "Awesome you got it right in #{(@guesses.length)+1} attempt(s)"
    percentage
    puts "------------------!!!!!!!GAME OVER!!!!!!!!------------------"
  end

  def percentage
    name = ((@right_guesses.to_f/@guesses.length)*100).to_i
    puts " You Have Scored #{name}%"
  end


end
