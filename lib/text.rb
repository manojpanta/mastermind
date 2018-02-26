module Text

    def header
      puts "\nWelcome to MASTERMIND\n"\
      "Would you like to (p)lay, read the (i)nstructions,"\
      " or (q)uit?"\
    end

    def welcome_msg
      @startingtime = Time.now
      puts 'I have generated a beginner sequence with four elements made '\
      ' up of: (r)ed,(g)reen, (b)lue, and (y)ellow. Use (q)uit at any time '\
      'to end the game.What is your guess?'
    end

    def game_over
      @endingtime = Time.now
      puts "Congratulations! You guessed the sequence "\
      "'#{thing.sequence.upcase}' in #{@guesses.length} guess(es) over "\
      "#{time_ellapsed}"
      puts '------------------!!!!!!!GAME OVER!!!!!!!!------------------'
    end

    def footer
      puts 'OHH OK !! see you soon!!'
    end

    def instructions
      puts 'MasterMind consists of the colors Red, Green, Blue,'\
      'and Yellow. The computer is gonna generate a seqeuence of '\
      'colors with the first character of color names of  lenght '\
      '4.Sequence may have repeating characters such as : "rrgg", '\
      'which means red in first and second position and green in '\
      'second and third position, but the length of individual sequence '\
      'will be 4 all the times.That means your individual guess should not'\
      ' have more than four characters. if your guess is wrong the system '\
      'will give you the hint. something like ; your guess "xxxx" has 3 '\
      'correct letters with 2 in correct positions. But if your guess is '\
      'right the game will put out a congratulations message with no. of '\
      ' guesses and time taken. Best of luck !!! '
    end

    def guesses_taken
      puts " You have taken #{@guesses.length} guess(es)."
    end

    def time_ellapsed
      time_taken = (@endingtime - @startingtime).round
      minutes_taken = (time_taken / 60).to_i
      seconds_taken = time_taken - (minutes_taken * 60)
      "#{minutes_taken} minute(s) and #{seconds_taken}second(s)."
    end

    def cheat
      puts "You Cheater!!! The answer is (#{thing.sequence.upcase})."
    end
end
