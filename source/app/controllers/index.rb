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

get '/choice' do
  erb :selections
end

get '/:id/result' do
  @which_game = params[:id]
  erb :result
end

post '/players' do
  @new_player = User.new(:player_number => params[:player_number],
      :first_name => params[:first_name],
      :age => params[:age])
  if @new_player.save
    redirect "/players"
  else
    [404, "This player couldn't be added."]
  end
end


post '/shoot' do
  @user1choice = params[:user1choice]
  @user2choice = params[:user2choice]
  @cur_player1 = User.find_by(:first_name => params[:p1_name])
  @cur_player2 = User.find_by(:first_name => params[:p2_name])
  @cur_game = GameLogic.new(@user1choice,@user2choice)

  if @cur_game.who_won == 1
  @x = Game.new(:winner.first_name => @cur_player1,
    :loser => @cur_player2,
    :choice1 => @cur_game.u1choice,
    :choice2 => @cur_game.u2choice)
  @x.save!

  elsif @cur_game.who_won == 2
    @x = Game.new(:winner => @cur_player2,
    :loser => @cur_player1,
    :choice1 => @cur_game.u1choice,
    :choice2 => @cur_game.u2choice)
    @x.save!

  elsif @cur_game.who_won == "tie"
      @x = Game.new(:winner => nil,
    :loser => nil,
    :choice1 => @cur_game.u1choice,
    :choice2 => @cur_game.u2choice)
  @x.save!

  end

  redirect "/#{@x.id}/result"
end