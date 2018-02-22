class Text
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
    puts 'MasterMind consists of the colors Red, Green, Blue, '\
   'and Yellow.  Four slots will randomly be filled with '\
   'one or more of these colors.  The object of the game '\
   'is to figure out what color(s) are being used, and in '\
   "what order.\n"\
   'You will receive feedback after each guess saying how '\
   'many elements or colors you guesses correctly, and how '\
   "many of them were in the correct slot.\n"\
   "Would you like to (p)lay or (q)uit?\n>"\
 end




end
