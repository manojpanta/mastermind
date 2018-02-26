class Combination

  attr_reader :sequence

  def initialize
    @sequence = ["b","b","b","b","g","g","g","g","r","r","r","\
      ""r","y","y","y","y"].sample(4).join
  end
end
