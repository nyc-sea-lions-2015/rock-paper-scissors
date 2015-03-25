class Game_Logic
  def initialize(choice1, choice2)
    # user1 = User.find(1)
    @choice1, @choice2 = choice1, choice2
    Game.create(user_1: User.find_by(id: 1)
                user_2: User.find_by(id: 2)
                choice1: @choice1,
                choice2: @choice2
      )
  end


end
