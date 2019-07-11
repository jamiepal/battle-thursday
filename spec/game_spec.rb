require 'game'

describe Game do
  # let(:charlie) { double :player, hp: 100 }
  # let(:leo) { double :player, hp: 100}

subject(:game) { described_class.new }
let(:player_1) { double :player }
let(:player_2) { double :player }

  describe '#attack' do
    it 'implements receive damage' do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end
end
