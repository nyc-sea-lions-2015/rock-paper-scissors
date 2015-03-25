get '/' do
  erb :index
end

get '/players' do
  @players = User.all
  erb :players
end

get '/players/new' do
  erb :new
end

get '/players/:id' do
  @cur_player = User.find_by(:id =>params[:id])
  erb :show
end

post '/players' do
  @new_player = User.new(:name => params[:player_number],
                        :first_name => params[:first_name],
                        :age => params[:age])
  if @new_player.save
    redirect "/players"
  else
    [404, "This player couldn't be added."]
  end
end

get '/game' do


end