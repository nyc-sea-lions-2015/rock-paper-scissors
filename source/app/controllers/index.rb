get '/' do
  redirect '/game'
end

get '/game' do
 erb :new_game
end

post '/game' do

  # p "Player 1 id:  #{params[:player_1_id]} , Player 2 id: #{params[:player_2_id]}, Player 1 token id: #{params[:player_1_token_id]}, Player 2 token id #{params[:player_2_token_id]} "

  current_game_logic = Game_logic.new(player_1_id: params[:player_1_id], player_2_id: params[:player_2_id], player_1_token_id: params[:player_1_token_id], player_2_token_id: params[:player_2_token_id])

    #what happens between current_game_logic and current_game that will create winner_id, loser_id, winner_token_id, loser_token_id. And how do those interact?

  current_game = Game.new(winner_id, loser_id, winner_token_id, loser_token_id)

  current_game.save!

  redirect '/game/#{current_game.id}'
end

get 'game/:id' do

end



