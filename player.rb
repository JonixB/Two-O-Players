class Player
  @@player_number = 0

  def initialize()
    @player_name = "Player #{@@player_number + 1}"
    @score = 3
    @@player_number += 1
  end
end