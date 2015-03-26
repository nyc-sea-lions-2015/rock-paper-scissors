get '/' do
  erb :index
end

get '/game' do
  player_1 = User.find_by(name: "Player 1")
  player_2 = User.find_by(name: "Player 2")
  @all_players = [player_1, player_2]
  rock = Token.find_by(name: "rock")
  paper = Token.find_by(name: "paper")
  scissors = Token.find_by(name: "scissors")
  @all_tokens = [rock, paper, scissors]

  erb :game
end

post '/game/:id' do
  puts params

end