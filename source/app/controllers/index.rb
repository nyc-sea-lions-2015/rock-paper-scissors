get '/' do
  erb :welcome
end

get '/gameboard' do
  user1_id = User.find_by_id(1).id
  user2_id = User.find_by_id(2).id
  erb :gameboard, locals: {user1_id: user1_id, user2_id: user2_id}
end

post '/game' do
  player1_id = params[:player_1_id]
  player2_id = params[:player_2_id]
  token1 = params[:player_1_token_id]
  token2 = params[:player_2_token_id]

  token1_id = Token.find_by(name: token1)
  token2_id = Token.find_by(name: token2)
  current_game = RockPaperScissors.new(player1_id, player2_id, token1, token2)
  results = current_game.play
  game = Game.create!(player_1_id: player1_id, player_2_id: player2_id, token_1_id: token2_id,
    token_2_id: token2_id, winner_id: results[0], loser_id: results[1], winning_token: results[2],
    losing_token: results[3])
  p game
end

get '/results' do
  erb :results
end


