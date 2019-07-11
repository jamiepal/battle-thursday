require 'player'

describe Player do

  let(:leo) { described_class.new('Leo')}
  let(:charlie) { described_class.new('Charlie')}

    it 'returns the name of the player' do
    expect(leo.name).to eq 'Leo'
  end

    it 'returns HP of the player' do
      expect(leo.hp).to eq 100
    end

    describe '#receive_damage' do
      it 'will minus by 10 points from hp' do
        leo.receive_damage
        expect(leo.hp).to eq 90
      end
    end
end
