get '/' do
  erb :index
end

get '/game' do
  pokemon = Pokemon.all.pluck(:name)
  erb :game, locals: {pokemon: pokemon}
end

post 'game' do
  @choice1 = "charmander"
  @choice2 = "bulbasaur"
  @test1 = Logic.new(@choice1, @choice2)
  x =
  redirect '/game/:id'
end

get 'game/:id' do
  result = Game.find_by(id: params[:id])
  erb :results, locals: {result: result}
end
