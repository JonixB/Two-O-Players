class Player
  attr_accessor :player_name, :score #player name in case they wanna change their name
  @@player_number = 0

  def initialize()
    @player_name = "Player #{@@player_number + 1}"
    @score = 3
    @@player_number += 1
  end

  def lost_hp
    @score -= 1
  end
end