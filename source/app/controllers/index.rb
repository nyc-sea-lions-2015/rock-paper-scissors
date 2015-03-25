get '/' do
  redirect '/game'
end

get '/game' do
 erb :new_game
end

post '/game' do
  # have the parameters player_1 id
  # have parameter player_2_id
  # have the parameter player_1_token
  # have the parameter player_2_token

  current_game_logic = Game_logic.new(player_1_id, player_2_id, player_1_token, player_2_token)

    #what happens between current_game_logic and current_game that will create winner_id, loser_id, winner_token_id, loser_token_id. And how do those interact?

  current_game = Game.new(winner_id, loser_id, winner_token_id, loser_token_id)

  current_game.save!

  redirect '/game/#{current_game.id}'
end

get 'game/:id' do

end



