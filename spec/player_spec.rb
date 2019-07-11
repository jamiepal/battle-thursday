require 'player'

describe Player do

  subject { described_class.new('Leo')}

    it 'returns the name of the player' do
    expect(subject.name).to eq 'Leo'
  end
  
end
