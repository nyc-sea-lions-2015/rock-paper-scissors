get '/guest/:id' do
  #Creates a new game for 2 players
  @game = Game.find(params[:id])
  erb :'/game/guest'
end

get 'guest/game/:id' do
  erb :'/game/doublewinner'
end
