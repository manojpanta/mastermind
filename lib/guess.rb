require './lib/combination'
require './lib/mastermind'

class Guess

  attr_reader :response

  def initialize(response, thing)
    @response = response
    @string = thing
    @correct_count = 0
  end

  def correct_elements
    correct_count = 0
    correct_array = @string.dup
    @response.chars.uniq.each  do |character|
      @string.sequence.chars.each_with_index do |letter, index|
        if character == letter
          @string.sequence.chars[index] = nil
          correct_count += 1
          break
        end
      end
    end
    correct_count
  end

  def correct_position
    position_count = 0
    @response.chars.each_with_index do |character, index|
      position_count += 1 if character == @string.sequence.chars[index]
    end
    position_count
  end

  def correct?
     @response.downcase == @string.sequence
  end

  def feedback
    puts "'#{@response.upcase}' has #{correct_elements} of the correct elements with #{correct_position} in the correct positions"
  end
end
