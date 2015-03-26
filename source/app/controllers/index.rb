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
  choice1 = Pokemon.find_by(name: params[:pokemon1])
  choice2 = Pokemon.find_by(name: params[:pokemon2])
  curr_game = Game.new( player_1: Player.find(1), player_2: Player.find(2),
                choice_1: choice1.id, choice_2: choice2.id)
  curr_logic = Logic.new(curr_game, params[:pokemon1], params[:pokemon2])
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
  winner = Player.find_by(id: result.winner_id).name
  pokemon = (result.winner_id == 1 ? Pokemon.find_by(id: result.choice_1): Pokemon.find_by(id: result.choice_2))
  erb :results, locals: {pokemon: pokemon.img, winner: winner}
end

