
class Player

  attr_reader :name
  attr_accessor :hit_points

  def initialize(name)
    @name = name
    @hit_points = 100
  end

  def reduce_hp
    @hit_points -= 10
  end

end
