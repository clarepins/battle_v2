
class Player
  attr_reader :name

  INITIAL_HP = 60

  def initialize(name)
    @name = name
  end

  def attack(initial_hp = INITIAL_HP)
    initial_hp - 10
  end

end
