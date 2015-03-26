get '/' do
  game = Game.create!
  redirect "/games/#{game.id}"
end


