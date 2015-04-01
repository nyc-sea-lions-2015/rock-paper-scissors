get '/' do
  erb :index  
end

get '/games' do
  
end

post '/games' do
  new_game = Game.new( winner_id: params["player_one_id"],
                       loser_id:  params["player_two_id"],
                       winning_token_id: params["player_one_throw"],
                       losing_token_id:  params["player_two_throw"])

  if new_game.save
    redirect "/games/#{new_game.id}"
  else
    [400, 'Game State is Invalid']
  end
end

get '/games/:id' do 

end
