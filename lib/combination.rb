class Combination

  attr_reader :sequence

  def initialize
    @sequence = ["r", "g", "b", "y"].sample(4).join
  end
end
