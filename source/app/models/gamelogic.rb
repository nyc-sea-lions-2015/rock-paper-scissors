class GameLogic

  def initialize(player_1_id, player_1_token_id, player_2_id, player_2_token_id)
    @player_1_id = player_1_id
    @player_1_token_id = player_1_token_id
    @player_2_id = player_2_id
    @player_2_token_id = player_2_token_id
  end

  #who_won is a method that returns player id of the winner

  def who_won
    wins = { 1 => 2,
             2 => 3,
             3 => 1 }

    if @player_1_token_id == @player_2_token_id
      return nil
    elsif wins[@player_1_token_id] == @player_2_token_id
      return @player_1_id
    else
      return @player_2_id
    end
  end

end
