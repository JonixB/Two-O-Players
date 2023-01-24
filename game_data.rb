class GameData
  attr_accessor :current_player, :player1, :player2

  def initialize
    @player1 = Player.new
    @player2 = Player.new
    @current_player = player1.player_name
  end

  def round
    puts "----- NEW TURN -----"
    question = Question.new
    puts "#{current_player}: What does #{question.first_num} plus #{question.second_num} equal?"
    player_answer = gets.to_i
      
    if current_player == "Player 1"
      if checker(question.answer, player_answer) == false
        player1.lost_hp
        puts "#{current_player}: Seriously? No!"
      else
        puts "#{current_player}: YES! You are correct."
      end
      current_player = player2.player_name
      else
        if checker(question.answer, player_answer) == false
          player2.lost_hp
          puts "#{current_player}: Seriously? No!"
        else
          puts "#{current_player}: YES! You are correct."
        end
        current_player = player1.player_name
    end
    game_over?
  end
  
  def checker(question, answer)
    if question == answer
      true
    else
      false
    end
  end

  def game_over?
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
      round
    end
  end
end