class Player
  attr_accessor :name, :hp

  INITIAL_HP = 60

  def initialize(name, hp = INITIAL_HP)
    @name = name
    @hp = hp
  end

  def receive_damage
    @hp -= 10
  end

end
