require 'player'

describe Player do
  subject(:player1) { described_class.new("Jimmy") }
  subject(:player2) { described_class.new("Steve") }
  context '#initialize' do

    it 'initializes with given name' do
      expect(player1.name).to eq "Jimmy"
    end

    it 'initializes with 100hp' do
      expect(player1.hit_points).to eq 100
    end
  end

  context "#reduce_hp" do

    it "reduces hit points by 10" do
      player1.reduce_hp
      expect{player1.reduce_hp}.to change{player1.hit_points}.by(-10)
    end
  end

end
