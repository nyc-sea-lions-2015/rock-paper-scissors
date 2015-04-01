class GameBrain

  attr_reader :winner, :loser

  WINS = {
    'rock' => 'scissors',
    'scissors'=> 'paper',
    'paper' =>   'rock'
  }

  def initialize(params)
    @player_one = User.find_by(id: params[:player_one_id])
    @player_two = User.find_by(id: params[:player_two_id])
    @player_one_token = Token.find_by(id: params[:player_one_throw])
    @player_two_token = Token.find_by(id: params[:player_two_throw])

    raise "tie" if @player_one_token.id == @player_two_token.id

    if WINS[@player_one_token.name] == WINS[@player_two_token.name]
      @winner = {player: @player_one, token: @player_one_token}
      @loser  = {player: @player_two, token: @player_two_token}
    else
      @winner = {player: @player_two, token: @player_two_token}
      @loser  = {player: @player_one, token: @player_one_token}
    end

  end

end
