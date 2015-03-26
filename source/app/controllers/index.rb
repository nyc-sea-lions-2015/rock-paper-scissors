get '/' do
  erb :index
end

get '/game/new' do
  erb :new
end

post '/game/new' do
 game_logic = GameLogic.new(player_1_id: params[:player_1_id], player_1_token_id: params[:player_1_token_id], player_2_id: params[:player_2_id], player_2_token_id: params[:player_2_id_token_id])
 winner = game_logic.who_won
  if winner == params[:player_1_id]
    winning_token = params[:player_1_token_id]
    #if player 1 wins, player 1 token is the winning token
    #then player 2 loses, player 2 token is the losing token
    loser = params[:player_2_id]
    losing_token = params[:player_2_token_id]
  else
    loser = params[:player_1_id]
    losing_token = params[:player_1_token_id]
    winning_token = params[:player_2_token_id]
  end
  Game.create(winner_id: winner, loser_id: loser, winning_token_id: winning_token, losing_token_id: losing_token)
  redirect "/game/#{new_game.id}"
end

get '/game/:id' do
  erb :show
end
