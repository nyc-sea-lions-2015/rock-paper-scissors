class RockPaperScissors

  attr_reader :player_1_id, :player_2_id, :player_1_token_id, :player_2_token_id, :winner_id, :loser_id

  def initialize(params)
    @player_1_id = params['player_1_id']
    @player_2_id = params['player_2_id']
    @player_1_token_id = params['player_1_token_id']
    @player_2_token_id = params['player_2_token_id']
  end

  def determine_winner
    difference = @player_1_token_id.to_i - @player_2_token_id.to_i
    if difference % 3 == 0
      @winner_id = "tie"
      @loser_id = "tie"
      return @winner_id, @loser_id
    elsif
      difference % 3 == 1
      @winner_id = @player_1_id.to_i
      @loser_id = @player_2_id.to_i
      return @winner_id, @loser_id
    else
      @winner_id = @player_2_id.to_i
      @loser_id = @player_1_id.to_i
      return @winner_id, @loser_id
    end
  end

end
