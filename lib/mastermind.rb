# require './lib/text_files'
class Mastermind
  attr_reader :guesses, :right_guesses
  def initialize
    @guesses = []
    @right_guesses = []

  end

  def actual_combination
    ["r", "g", "b", "y" ].sample(4).join
  end

  def correct?(answer)
    return "that is awesome" if answer == actual_combination
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
