get '/' do
  @game = Game.create
  erb :"/games/#{@game.id}"
end


