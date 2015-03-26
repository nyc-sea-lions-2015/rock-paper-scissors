get '/' do
  erb :index
end

get '/game' do
  erb :game
end

post '/game' do
  cur_gameplay = Gameplay.new(params)
  @game = Game.new(params)
  if @game.save
    redirect "/games/#{@game.id}"
  else
    redirect '/'
  end
end

get '/game/:id' do
  @game = Game.find_by(id: params[:id])
  erb :show
end
