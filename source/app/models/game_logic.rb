class Game_Logic
  def initialize(choice1, choice2)
    # user1 = User.find(1)
    @choice1, @choice2 = choice1, choice2
    Game.create(user1: User.find_by(id: 1)
                user2: User.find_by(id: 2)
                choice1: @choice1,
                choice2: @choice2
      )
  end

  def game_rules
    case @choice1
    when "rock"
      @choice2 != "paper"
    when "scissors"
      @choice2 != "rock"
    when "paper"
      @choice2 != "scissors"
    end
  end

  def winner

  end

end
