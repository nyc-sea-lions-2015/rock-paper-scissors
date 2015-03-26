get '/game/:id' do
  game = Game.find_by(:id => params[:id])
  erb :game, locals: {game: game, tokens: Token.all}
end

puts '/games/:id/player_1_name' do
  game = Game.find_by(:id => params[:id])
  game.player_1 = User.find_or_create_by(:name => params[:player_1_name])
  game.save:
  redirect back
end

puts '/games/:id/player_2_name' do
  game = Game.find_by(:id => params[:id])
  game.player_2 = User.find_or_create_by(:name => params[:player_2_name])
  game.save!
  redirect back
end

puts '/games/:id/player_1_choice_ID' do
  game = Game.find_by(:id => params[:id])
  game.player_1_choice = Token.find(params[:player_1_choice_ID])
  game.save!
  redirect back
end

puts '/games/:id/player_2_choice_ID' do
  game = Game.find_by(:id => params[:id])
  game.player_2_choice = Token.find(params[:player_2_choice_ID])
  game.save!
  redirect back
end
