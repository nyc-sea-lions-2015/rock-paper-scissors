get "/games/:id" do
  game = Game.find(params[:id])
  erb :"game/play", locals: {game: game, tokens: Token.all}
end

put "/game/:id" do
  game = Game.find(params[:id])
  game.player_1 = Player.find_or_create_by!(params[:player_1_name])
  game.player_2 = Player.find_or_create_by!(params[:player_2_name])
end

put "/games/:id/player_1_name" do
  game = Game.find(params[:id])
  game.player_1 = Player.find_or_create_by!(name: params[:player_1_name])
  game.save!
  redirect back
end

put "/games/:id/player_2_name" do
  game = Game.find(params[:id])
  game.player_2 = Player.find_or_create_by!(name: params[:player_2_name])
  game.save!
  redirect back
end

put "/games/:id/player_1_throw_id" do
  game = Game.find(params[:id])
  game.player_1_throw = Token.find(params[:player_1_throw_id])
  game.save!
  redirect back
end

put "/games/:id/player_2_throw_id" do
  game = Game.find(params[:id])
  game.player_2_throw = Token.find(params[:player_2_throw_id])
  game.save!
  redirect back
end


