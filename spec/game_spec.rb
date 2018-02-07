require 'game'

describe Game do

  subject(:game) { described_class.new("Jimmy", "Steven") }
  let(:player1) { double :player }
  let(:player2) { double :player }

  context "#attack" do

    it "reduces opponents hit points" do
      expect(player2).to receive(:reduce_hp)
      game.attack(player2)
    end
  end
  context '#initialize' do 
    it "initializes with a player class as argument" do 
      expect(game.player_1).to be_an_instance_of Player
    end
  end
end
