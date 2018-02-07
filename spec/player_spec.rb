require 'player'

describe Player do 
  subject(:new_name) { described_class.new("Jimmy") }
  context '#initialize' do 
    
    it 'initializes with given name' do 
      expect(new_name.name).to eq "Jimmy"
    end
  end
end
