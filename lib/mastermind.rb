require_relative 'guess'
require_relative 'combination'
require_relative 'text'


class Mastermind

  include Text

  attr_reader :right_guesses, :guesses, :thing
  def initialize
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
    if play?(answer)
      @thing = Combination.new
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
      welcome_msg
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
      abort
    else
      guess1 = Guess.new(answer, thing)
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

  def quit?(answer)
    answer == "q" || answer == "(q)" || answer == "quit"
  end

  def answer_q
    footer
    abort
  end

  def cheat

    puts "You Cheater!!! The answer is ((#{thing.sequence}))"
    puts "I am kicking you back to start."

  end


end
