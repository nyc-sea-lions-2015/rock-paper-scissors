get '/' do
  erb :index
end

get '/game' do
  @cur_player = User.find_by(id: 1)
  erb :game
end

post '/newgame' do
  p_one = User.new(name: params[:player_one])
  [404, "player one not saved"] unless p_one.save
  p_two = User.new(name: params[:player_two])
  [404, "player two not saved"] unless p_two.save

  Game.create({player_one_id: p_one[:id],
               player_two_id: p_two[:id]})
end

put '/player_choice' do

end
