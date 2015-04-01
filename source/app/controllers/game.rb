require 'pry'

get '/' do
  @tokens = Token.all
  erb :index  
end

get '/games' do
 @was_tie = params[:tie] || false 
 erb :game, locals: {tokens: Token.all, players: User.all}
end

post '/games' do

  begin
    game_outcome = GameBrain.new({ player_one_id: params[:player_id][0],
                                   player_two_id: params[:player_id][1],
                                   player_one_throw: params[:player_throw][0], 
                                   player_two_throw: params[:player_throw][1] })
  rescue
    redirect "/games?tie=true"
  end

  new_game = Game.new(  winner: game_outcome.winner[:player],
                        loser:  game_outcome.loser[:player], 
                        winning_token: game_outcome.winner[:token],
                        losing_token:  game_outcome.loser[:token] )

  if new_game.save
    redirect "/games/#{new_game.id}"
  else
    [400, 'Game State is Invalid']
  end
end

get '/games/:id' do 
  current_game = Game.find_by(id: params[:id])

  erb :results, locals: {game: current_game}

end
