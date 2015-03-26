get '/' do
  erb :index
end

get '/game' do

  rock = Token.find_by(name: "rock")
  paper = Token.find_by(name: "paper")
  scissors = Token.find_by(name: "scissors")
  all_tokens = [rock, paper, scissors]

  erb :game, locals: {tokens: all_tokens}
end