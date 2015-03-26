get "/game" do
  @player1 = Player.find_by(id: 1)
  @player2 = Player.find_by(id: 2)
  erb :"gameboard"
end

post "/game" do
  current_game = GameLogic.new(player1_id: params[:player1_id],
                               player2_id: params[:player2_id],
                               choice1: params[:player1_token],
                               choice2: params[:player2_token])
  won = Player.find_by(id: current_game.winner)
  current_game.play
  winner = Player.find_by(id: current_game.winner)
  loser = Player.find_by(id: current_game.loser)
  losing_token = current_game.losing_token
  winning_token =current_game.winning_token
  game = Game.create(winner_id: winner.id,
         looser_id: loser.id,
          winning_token: winning_token,
          losing_token: losing_token)


end


# @choices = ["rock", "paper", "scissors"]
     # @player1_id=args.fetch(:player1_id);
     # @player2_id=args.fetch(:player2_id);
     # @choice1=args.fetch(:choice1);
     # @choice2=args.fetch(:choice2);
