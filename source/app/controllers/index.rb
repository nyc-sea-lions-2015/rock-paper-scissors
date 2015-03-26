get '/' do
  redirect '/game'
end

get '/game' do
 erb :new_game
end

post '/game' do

  # p "Player 1 id:  #{params[:player_1_id]} , Player 2 id: #{params[:player_2_id]}, Player 1 token id: #{params[:player_1_token_id]}, Player 2 token id #{params[:player_2_token_id]} "

  current_game_logic = GameLogic.new(params[:player_1_id], params[:player_2_id], params[:player_1_token_id], params[:player_2_token_id])

  @winner_id, @loser_id, @winner_token_id, @loser_token_id = current_game_logic.outcome?

  current_game = Game.new(winner_id: @winner_id,  loser_id: @loser_id, winner_token_id: @winner_token_id, loser_token_id: @loser_token_id)

  current_game.save!

  @displayed_game = Game.last

  erb :show_results

end




