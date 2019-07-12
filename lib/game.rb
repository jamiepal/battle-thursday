require_relative './player'

class Game

attr_reader :player_1, :player_2, :current_player , :opposing_player

  def initialize(player_1, player_2)
    @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
    @current_player = @player_1
    @opposing_player = @player_2
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turns
    if @current_player == @player_1
      @current_player = @player_2
      @opposing_player = @player_1
    else
      @current_player = @player_1
      @opposing_player = @player_2
    end
  end
  def game_over?
    @player_1.hp <= 0 || @player_2.hp <= 0
  end

end
