require 'player'

describe Player do
  subject(:clare) { Player.new('Clare') }

  it "returns its name" do
    expect(subject.name).to eq('Clare')
  end
end
