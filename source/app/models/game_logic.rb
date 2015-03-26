class GameLogic

# RULES = {
#   "rock" (1) => "scissor", (3)
#   "paper" (2) => "rock", (1)
#   "scissor"(3) => "paper" (2)
# }

RULES = {
  1 => 3,
  2 => 1,
  3 => 2
  }


  def initialize(player_1_id, player_2_id, player_1_token_id, player_2_token_id)
    @player_1_id = player_1_id
    @player_2_id = player_2_id
    @player_1_token_id = player_1_token_id
    @player_2_token_id = player_2_token_id
  end

  def outcome?
    if @player_1_token_id == @player_2_token_id
      return nil
    elsif RULES[@player_1_token_id] == @player_2_token_id
      @winner_id = @player_1_id
      @loser_id = @player_2_id
      @winner_token_id = @player_1_token_id
      @loser_token_id = @player_2_token_id
      return @winner_id, @loser_id, @winner_token_id, @loser_token_id
      #player one wins
    else
      @winner_id = @player_2_id
      @loser_id = @player_1_id
      @winner_token_id = @player_2_token_id
      @loser_token_id = @player_1_token_id
      return @winner_id, @loser_id, @winner_token_id, @loser_token_id
      #player two wins
    end
  end

end
