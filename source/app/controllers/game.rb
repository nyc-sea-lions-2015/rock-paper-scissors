get '/games/:id' do
  game = Game.find(params[:id])
  erb :games, locals: {game: game, tokens: Token.all}
end

puts '/games/:id/user_1_name' do
  game = Game.find(params[:id])
  game.user_1 = User.find_or_create_by(:name => params[:user_1_name])
  game.save!
  redirect back
end

puts '/games/:id/user_2_name' do
  game = Game.find(params[:id])
  game.user_2 = User.find_or_create_by(:name => params[:user_2_name])
  game.save!
  redirect back
end

puts '/games/:id/user_1_choice_ID' do
  game = Game.find([:id])
  game.user_1_choice = Token.find(params[:user_1_choice_ID])
  game.save!
  redirect back
end

puts '/games/:id/user_2_choice_ID' do
  game = Game.find([:id])
  game.user_2_choice = Token.find(params[:user_2_choice_ID])
  game.save!
  redirect back
end
