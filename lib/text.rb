module Text

    def header
      "\nWelcome to MASTERMIND\n"\
      "Would you like to (p)lay, read the (i)nstructions,"\
      " or (q)uit?"\
    end

    def welcome_msg
      puts "I have generated a beginner sequence with four elements made "\
      " up of: (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time "\
      "to end the game.What's your guess?"
    end

    def game_over
      puts "Awesome you got it right in #{(@guesses.length)+1} attempt(s)"
      puts "------------------!!!!!!!GAME OVER!!!!!!!!------------------"
    end

    def footer
      puts "OHH OK !! see you soon!!"
    end


    def instructions
      puts "MasterMind consists of the colors Red, Green, Blue,"\
      "and Yellow "
    end







end
