get '/game' do
	@player1 = Player.find_by(id: 1)
	@player1 = Player.find_by(id: 2)
	erb :"game/new"
end

post '/game' do
	@game_logic = GameLogic.new 

	@game = Game.new	

	@game.save!

	redirct '/game/#{game/id}'
end