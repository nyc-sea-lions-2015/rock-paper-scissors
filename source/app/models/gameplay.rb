class Gameplay
  attr_reader :player_1, :player_2, :player_1_token, :player_2_token
  def initialize(player_1, player_2, player_1_token, player_2_token)
    @player_1 = player_1
    @player_2 = player_2
    @player_1_token = player_1_token
    @player_2_token = player_2_token
  end

  def find_winner
    return "tie" if player_1_token == player_2_token
    case player_1_token
    when "Rock"
      if player_2_token == "Scissors"
        winner = player_1
        loser = player_2
        winner_token = player_1_token
        loser_token = player_2_token
      else
        winner = player_2
        loser = player_1
        winner_token = player_2_token
        loser_token = player_1_token
      end
    when "Scissors"
      if player_2_token == "Paper"
        winner = player_1
        loser = player_2
        winner_token = player_1_token
        loser_token = player_2_token
      else
        winner = player_2
        loser = player_1
        winner_token = player_2_token
        loser_token = player_1_token
      end
    else
      if player_2_token == "Rock"
        winner = player_1
        loser = player_2
        winner_token = player_1_token
        loser_token = player_2_token
      else
        winner = player_2
        loser = player_1
        winner_token = player_2_token
        loser_token = player_1_token
      end
    end

    return winner, loser, winner_token, loser_token
  end
end

cur_game = Gameplay.new(1, 2, "Rock", "Rock")
p cur_game.find_winner
