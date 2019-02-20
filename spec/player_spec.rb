require 'player'

describe Player do
  subject(:clare) { Player.new('Clare')}

  it "returns its name" do
    expect(player.name).to eq('Clare')
  end
end
