get '/games/:id' do
  game = Game.find(params[:id])
  erb :games, locals: {game: game, tokens: Token.all}
end

put '/games/:id/user_1_name' do
  game = Game.find(params[:id])
  game.user_1 = User.find_or_create_by!(:name => params[:name])
  game.save!
  redirect back
end

put '/games/:id/user_2_name' do
  game = Game.find(params[:id])
  game.user_2 = User.find_or_create_by!(:name => params[:name])
  game.save!
  redirect back
end

put '/games/:id/user_1_choice_id' do
  game = Game.find(params[:id])
  game.user_1_choice = Token.find(params[:id])
  game.save!
  redirect back
end

put '/games/:id/user_2_choice_id' do
  game = Game.find(params[:id])
  game.user_2_choice = Token.find(params[:id])
  game.save!
  redirect back
end
