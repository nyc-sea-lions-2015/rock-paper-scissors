get '/' do
  erb :index
end

get '/game' do
  pokemon = Pokemon.all.pluck(:name)
  erb :game, locals: {pokemon: pokemon}
end

post '/game' do
  # winner = Logic.new(params[:pokemon1], params[:pokemon2])
  # loser =
  p params
  player1 = Player.find_by(id: 1)
  player2 = Player.find_by(id: 2)
  choice1 = Pokemon.find_by(name: params[:pokemon1])
  choice2 = Pokemon.find_by(name: params[:pokemon2])
  curr_game = Game.new(choice_1: choice1, choice_2: choice2)
  curr_logic = Logic.new(curr_game, params[:pokemon1], params[:pokemon2], player1, player2)
  if curr_logic.status == false
    redirect '/game/tie'
  else
    curr_game.save!
    redirect "/game/#{curr_game.id}"
  end
end

get '/game/tie' do
  "UH OH YOU TIED!"
end

get '/game/:id' do
  result = Game.find_by(id: params[:id])
  win_pokemon = (result.winner.id == 1 ? result.choice_1 : result.choice_2)
  pokemon = Pokemon.find_by(id: win_pokemon.id)
  erb :results, locals: {pokemon: pokemon.img, winner: result.winner.name}
end

