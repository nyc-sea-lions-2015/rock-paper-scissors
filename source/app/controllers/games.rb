get "/game" do
  @player1 = Player.find_by(id: 1)
  @player2 = Player.find_by(id: 2)
  erb :"gameboard"
end

post "/game" do
  current_game = GameLogic.new(player1_id: params[:player1_id],
                               player2_id: params[:player2_id],
                               choice1: params[:player1_token],
                               choice2: params[:player2_token])
  won = Player.find_by(id: current_game.winner)
  current_game.play
  if current_game.winner
    winner = Player.find_by(id: current_game.winner)
    loser = Player.find_by(id: current_game.loser)
    losing_token = current_game.losing_token
    winning_token =current_game.winning_token
    game = Game.create(winner_id: winner.id,
           looser_id: loser.id,
            winning_token: winning_token,
            losing_token: losing_token)
    if game.save!
      redirect "/games/#{game.id}"
    else
      [402, "something is not right"]
    end
  elsif current_game.winner ==  nil
    @played_token = current_game.played_token
    # "#{@played_token}"
    erb :"game/tie"
  end
end

get "/games/:id" do
  @player1 = Player.all[0]
  @player2 = Player.all[1]
  @player1_wins = Game.where(winner_id: 1)
  @player2_wins = Game.where(winner_id: 2)
  @games = Game.all
  @game = Game.find_by(id: params[:id])
  @winner = Player.find_by(id: @game.winner_id)
  @looser = Player.find_by(id: @game.looser_id)
  erb :"game/results"
end
