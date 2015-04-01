require 'pry'

get '/' do
  @tokens = Token.all
  erb :index  
end

get '/games' do
 erb :game, locals: {tokens: Token.all, players: User.all}
end

post '/games' do

  player_one = User.find_by(id: params[:player_id][0])
  player_two = User.find_by(id: params[:player_id][1])

  player_one_throw = Token.find_by(id: params[:player_throw][0])
  player_two_throw = Token.find_by(id: params[:player_throw][1])

  new_game = Game.new(winner: player_one,
                      loser: player_two, 
                      winning_token: player_one_throw,
                      losing_token:  player_two_throw)

  if new_game.save
    redirect "/games/#{new_game.id}"
  else
    [400, 'Game State is Invalid']
  end
end

get '/games/:id' do 

end
