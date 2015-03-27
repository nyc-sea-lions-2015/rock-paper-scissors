class Gameplay
  attr_reader :player_1, :player_2, :player_1_token, :player_2_token
  def initialize(args)
    @player_1 = args[player_1]
    @player_2 = args[player_2]
    @player_1_token = args[player_1_token]
    @player_2_token = args[player_2_token]
  end

  def find_winner
    results = {}
    case player_1_token
    when "rock"
      if player_2_token == "scissors"
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
    when "scissors"
      if player_2_token == "paper"
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
      if player_2_token == "rock"
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

    results = {winner: winner, loser: loser, winner_token: winner_token, loser_token: loser_token}
    return results
  end
end

# cur_game = Gameplay.new(1, 2, "Rock", "Rock")
# p cur_game.find_winner
