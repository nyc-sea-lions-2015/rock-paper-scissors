class GameLogic
  def initialize(args)
     @player1_id=args.fetch(:player1_id);
     @player2_id=args.fetch(:player2_id);
     @choice1=args.fetch(:choice1);
     @choice2=args.fetch(:choice2);
  end
  def play
    @player1={player: @player1_id, choice: @choice1}
    @player2={player: @player2_id, choice: @choice2}
    if @player1[:choice] == "rock" && @player2[:choice] =="scissors"
      @winner = @player1_id
      @loser = @player2_id
      @winning_choice = "rock"
      @losing_choice = "scissors"
    elsif @player1[:choice] == "rock" && @player2[:choice] =="paper"
      @winner = @player2_id
      @loser = @player1_id
      @winning_choice = "paper"
      @losing_choice = "rock"
    elsif @player1[:choice] == "paper" && @player2[:choice] =="scissors"
      @winner = @player2_id
      @loser = @player1_id
      @winning_choice = "scissors"
      @losing_choice = "paper"
    elsif @player1[:choice] == "paper" && @player2[:choice] =="rock"
      @winner = @player1_id
      @loser = @player2_id
      @winning_choice = "paper"
      @losing_choice = "rock"
    elsif @player1[:choice] == "scissors" && @player2[:choice] =="paper"
      @winner = @player1_id
      @loser = @player2_id
      @winning_choice = "scissors"
      @losing_choice = "paper"
    elsif @player1[:choice] == "scissors" && @player2[:choice] =="rock"
      @winner = @player2_id
      @loser = @player1_id
      @winning_choice = "rock"
      @losing_choice = "scissors"
    elsif @player1[:choice] == @player2[:choice]
      @winner = nil
      p @played_token = @player1[:choice]
    end
  end
  def winner
    @winner
  end
  def loser
    @loser
  end
  def winning_token
    @winning_choice
  end
  def losing_token
    @losing_choice
  end
  def played_token
    p @played_token
  end
end
