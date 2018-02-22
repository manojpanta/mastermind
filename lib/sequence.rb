class Combination
  attr_reader :sequence

  def initialize(default = ["r", "g", "b", "y" ].sample(4).join)
    @sequence = default
  end




end
