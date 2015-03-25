get '/game/new/:id' do
  @user = User.find(params[:id])
  @game = Game.create()
  erb :'/game/view'
end

# post '/game/new/:id' do
# Wanted to use this to create a new game
#   @game = Game.create(params, user_id[:id])
#   redirect "/game/new/#{@game.id}"
# end

get '/game/rock/:id' do
  @game = Game.find(params[:id])
end

get '/game/paper/:id' do

end

get '/game/scissors/:id' do

end





# post '/game/result' do
#   #this shoudl record winner with user
# end
