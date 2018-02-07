require 'player'

describe Player do
  subject(:new_name) { described_class.new("Jimmy") }
  context '#initialize' do

    it 'initializes with given name' do
      expect(new_name.name).to eq "Jimmy"
    end

    it 'initializes with 100hp' do
      expect(new_name.hit_points).to eq 100
    end
  end

  context "#reduce_hp" do

    it "reduces hit points by 10" do
      new_name.reduce_hp
      expect{new_name.reduce_hp}.to change{new_name.hit_points}.by(-10)
    end
  end
end
