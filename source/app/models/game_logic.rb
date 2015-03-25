class GameLogic
  def initialize(args)
     @choices = ["rock", "paper", "scissors"]
     @player1=args.fetch(:player1);
     @player2=args.fetch(:player2);
     @choice1=args.fetch(:choice1);
     @choice2=args.fetch(:choice2);
  end
  def play

  end
end
