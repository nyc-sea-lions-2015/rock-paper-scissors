get "/game" do
  player_1_token = params[:token_1] || ""
  cur_winner = params[:winner]
  player_1 = User.find_by(name: "Player 1")
  player_2 = User.find_by(name: "Player 2")
  all_players = [player_1, player_2]
  rock = Token.find_by(name: "rock")
  paper = Token.find_by(name: "paper")
  scissors = Token.find_by(name: "scissors")
  all_tokens = [rock, paper, scissors]

  erb :game, locals: {
                      tokens: all_tokens,
                      players: all_players,
                      winner: cur_winner,
                      token_1: player_1_token
                     }
end

post "/player_1" do
  player_1_token = params[:player_1_token]
  redirect "/game?token_1=#{player_1_token}"
end

post "/game" do

  player_1_token = Token.find_by(name: params[:player_1_token_name])
  player_2_token = Token.find_by(name: params[:player_2_token_name])
  cur_game = Game.new(
                  player_1_id: 1,
                  player_2_id: 2,
                  player_1_token_id: player_1_token.id,
                  player_2_token_id: player_2_token.id
                 )

  if cur_game.winner.is_a?(User)
    #the query with the redirect on line 38 will not accept a whitespace
    cur_winner = "#{cur_game.winner.name.gsub(' ', '')}"
  else
    #in cases of a tie, winner returns the string "Draw."
    cur_winner = cur_game.winner
  end


  if cur_game.save
    redirect "/game?winner=#{cur_winner}"
  else
    [404, "Invalid game!"]
  end

end