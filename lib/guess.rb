require './lib/sequence'
class Guess
  attr_reader :response

  def initialize(response, string)
    @response = response
    @string = Combination.new(string)
  end

  def correct?
    @response.downcase == @string.sequence
  end

  def feedback
    if correct?
      'Correct!'
    else
      'Incorrect.'
    end
  end
end
