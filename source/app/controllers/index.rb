get '/' do
  erb :index
end

get '/game' do
  @user1 = User.first
  @user2 = User.last
  erb :gameboard
end

post '/game' do
  @params = params


  @current_game = RockPaperScissors.new(params)
  @winner,@loser,@winning_token,@losing_token = @current_game.determine_winner


  records = Game.order(created_at: :desc)
  unless @current_game.determine_winner == nil
    Game.create(winner_id:@winner,
                loser_id:@loser,
                winning_token_id:@winning_token,
                losing_token_id:@losing_token)
  else
    redirect back
  end

  erb :results, locals: {last_game: Game.last,
                         player1: User.first,
                         player2: User.last,
                         records: records
                       }
end

