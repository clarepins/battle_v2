
class Player
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def hitpoints(initial_hp = 60)
    initial_hp - 10
  end

end
