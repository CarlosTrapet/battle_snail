require 'game'

describe Game do

  subject(:game) { described_class.new }
  let(:player1) { double :player }
  let(:player2) { double :player }

  context "#attack" do

    it "reduces opponents hit points" do
      expect(player2).to receive(:reduce_hp)
      game.attack(player2)
      # expect{player1.attack(player2)}.to change{player2.hit_points}.by(-10)
    end

  end
end
