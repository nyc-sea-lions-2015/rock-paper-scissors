class GameLogic
  def initialize(game, choice1, choice2)
    # user1 = User.find(1)
    @game, @choice1, @choice2 = game, choice1, choice2
    # winner?
    congratulate
  end

  def winner?
    case @choice1
    when "rock"
      @choice2 != "paper"
    when "scissors"
      @choice2 != "rock"
    when "paper"
      @choice2 != "scissors"
    end
  end

  def congratulate
    if winner?
      @game.winner_id = 1
      @game.loser_id = 2
    else
      @game.winner_id = 2
      @game.loser_id = 1
    end
    @game.save!
  end
end
