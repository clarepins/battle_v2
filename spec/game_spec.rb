require 'game'

describe Game do

  subject(:game) { described_class.new(player1, player2) }
  let(:player1) { double :player }
  let(:player2) { double :player }

  

  it 'player 2s HPs reduce by 10 when attacked' do
    expect(player2).to receive(:receive_damage)
    game.attack(player2)
  end

end
