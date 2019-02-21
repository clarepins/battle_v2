require 'game'

describe Game do

  subject(:game) { described_class.new }
  let(:player) { double :player }

  it 'player 2s HPs reduce by 10 when attacked' do
    expect(player).to receive(:receive_damage)
    game.attack(player)
  end

end
