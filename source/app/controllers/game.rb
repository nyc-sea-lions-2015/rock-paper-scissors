get '/game' do
  images = Token.all
  erb(:game, locals: {emojis: images})
end

get '/game/tie' do
  erb (:tie)
end

post '/game/tie' do
  redirect '/game'
end

post '/game' do
  p params
  choices = params.values
  #TODO: if either choice isn't entered go to tie? raise error?

  if choices[0] != choices[1]
    current_game = Game.create(user1: User.find_by(id: 1),
                user2: User.find_by(id: 2),
                choice_1: Token.find_by(name: choices[0]),
                choice_2: Token.find_by(name:choices[1])
      )
    logic = GameLogic.new(current_game, choices[0], choices[1])
    redirect "/game/#{current_game.id}"
  else
    redirect "/game/tie"
  end
end

get '/game/:id' do
  current_game = Game.find(params[:id])
  erb(:results, locals: {game: current_game, winner: current_game.winner_id, loser: current_game.loser_id})
end
