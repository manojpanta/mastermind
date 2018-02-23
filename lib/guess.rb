require './lib/combination'
class Guess
  attr_reader :response

  def initialize(response, string)
    @response = response
    @string = Combination.new(string)
  end

  def correct?
    @response.downcase == @string.sequence
  end

  def correct_colors
    if @response.split("")[0] == @string.sequence.split("")[0]
      return true
    end
    if (@response.split("") - @string.sequence.split("")).empty?
      puts "all the colors are right with 0 positions right."
    end

  end

  def correct_elements
    @response.split("").each do |letter|
      puts letter
    end
  end

  def feedback
    if correct?
      'Correct!'
    else
      correct_colors
      "Your guess (#{@response}) is Incorrect."
    end
  end
end
