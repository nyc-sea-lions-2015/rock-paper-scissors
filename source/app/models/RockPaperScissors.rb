class RockPaperScissors

  attr_reader :player_1_id, :player_2_id, :player_1_token_id, :player_2_token_id, :winner_id, :loser_id

  def initialize(params)
    @player_1_id = params['player_1_id'].to_i
    @player_2_id = params['player_2_id'].to_i
    @player_1_token_id = params['player_1_token_id'].to_i
    @player_2_token_id = params['player_2_token_id'].to_i
  end

  def determine_winner
    difference = @player_1_token_id - @player_2_token_id
    if difference % 3 == 0
      return nil
    elsif
      difference % 3 == 1
      @winner, @winning_token = @player_1_id, @player_1_token_id
      @loser, @losing_token = @player_2_id, @player_2_token_id
      return @winner, @loser, @winning_token, @losing_token
    else
      @winner, @winning_token = @player_2_id, @player_2_token_id
      @loser, @losing_token = @player_1_id, @player_1_token_id
      return @winner, @loser, @winning_token, @losing_token
    end
  end

end
