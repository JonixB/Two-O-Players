require './player'
require './game_helper'
require './game_data'

game = GameData.new

player1 = Player.new
player2 = Player.new

while player1.score != 0 and player2.score != 0 do
  if game.current_player == nil
    question = generate_question(player1.player_name)
    player_answer = gets.to_i

    if checker(question, player_answer) == false
      player1.lost_hp
      puts "Player 1: Seriously? No!"
    else
      puts "Player 1: YES! You are correct."
    end

    game.current_player = player2.player_name
    puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
  else
    puts "----- NEW TURN -----"
    question = generate_question(game.current_player)
    player_answer = gets.to_i
    
    if game.current_player == "Player 1"
      if checker(question, player_answer) == false
        player1.lost_hp
        puts "#{game.current_player}: Seriously? No!"
      else
        puts "#{game.current_player}: YES! You are correct."
      end
      game.current_player = player2.player_name
    else
      if checker(question, player_answer) == false
        player2.lost_hp
        puts "#{game.current_player}: Seriously? No!"
      else
        puts "#{game.current_player}: YES! You are correct."
      end
      game.current_player = player1.player_name
    end

    if player1.score == 0
      puts "#{player2.player_name} wins with a score of #{player2.score}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    elsif player2.score == 0
      puts "#{player1.player_name} wins with a score of #{player1.score}/3"
      puts "----- GAME OVER -----"
      puts "Good bye!"
    else
      puts "P1: #{player1.score}/3 vs P2: #{player2.score}/3"
    end
  end
end