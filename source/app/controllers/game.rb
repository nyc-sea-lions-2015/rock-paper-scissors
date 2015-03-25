get '/game/new/:id' do
  @user = User.find(params[:id])
  @game = Game.create()
  erb :'/game/view'
end
get '/game/win' do
  erb :'/game/win'
end

get '/game/lose' do
  erb :'/game/lose'
end

# post '/game/new/:id' do
# Wanted to use this to create a new game
#   @game = Game.create(params, user_id[:id])
#   redirect "/game/new/#{@game.id}"
# end

get '/game/:shoot/:id' do
  @game = Game.find(params[:id])
  @result = @game.shoot(params[:shoot])
  redirect "/game/#{@result}"
end




# post '/game/result' do
#   #this shoudl record winner with user
# end
