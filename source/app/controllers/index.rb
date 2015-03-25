get '/' do
  erb :index
end

get '/game/new' do

  erb :forms
end

get '/game/:id' do
  @game = Game.find_by(id: params[:id])
  logic = GameBrain.new(@game)
  if logic.winner == "tie"
    redirect "/game/new"
  else
    @game.winner_id = logic.winner
    if @game.winner_id == 1
      @game.loser_id = 2
      @winning_token = Token.find_by(id: @game.choice_one_id).name
      @losing_token = Token.find_by(id: @game.choice_two_id).name
    else
      @game.loser_id = 1
      @winning_token = Token.find_by(id: @game.choice_two_id).name
      @losing_token = Token.find_by(id: @game.choice_one_id).name
    end
  end
  @winner = User.find_by(id: @game.winner_id).name
  @loser = User.find_by(id: @game.loser_id).name
  @game.save
  erb :results
end

post '/newgame' do
  new_game = Game.new({player_one_id: 1,
                       player_two_id: 2,
                       choice_one_id: Token.find_by(id: params[:choice1]).id,
                       choice_two_id: Token.find_by(id: params[:choice2]).id})

  if new_game.save
    redirect "/game/#{new_game.id}"
  else
    [404, "game did not save"]
  end
end




