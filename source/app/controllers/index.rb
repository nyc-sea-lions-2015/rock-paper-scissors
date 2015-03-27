require 'sinatra'

get '/' do
  game = Game.create!
  redirect "/game/#{game.id}"
end

get '/game/:game_id' do
  @game = Game.find(params[:game_id])
  erb :'gameboard'
end

put '/game/:game_id/throws' do
  @game = Game.find(params[:game_id])
  @game.player_1_throw = Token.find_by(name: params[:player_1_throw])
  @game.player_2_throw = Token.find_by(name: params[:player_2_throw])
  @shoot = Gamelogic.new(@game.player_1_throw.name, @game.player_2_throw.name)
  @game.save!
  erb :'outcome'
end

