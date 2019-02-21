require 'game'

describe Game do

  let(:player) { double :player }

  it 'player 2s HPs reduce by 10 when attacked' do
    player_double = double :player, name: 'Clare', hp: 60
    subject.attack(player_double)
    expect(player_double.hp).to eq(50)
  end

end
