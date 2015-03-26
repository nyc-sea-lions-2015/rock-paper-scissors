class Logic
  def initialize(game, choice1, choice2)
    @game = game
    @choice1, @choice2 = choice1, choice2
    rules
    choose_winner
  end

  #set the standard of what beats what
  def rules
    case @choice1
    when 'charmander'
      @choice2 != 'squirtle'
    when 'squirtle'
      @choice2 != 'bulbasaur'
    when 'bulbasaur'
      @choice2 != 'charmander'
    else
      return
    end
  end

  def choose_winner
    # @game.winner_id = (@choice1 ? 1 : 2)
    if @choice1
      @game.winner_id = 1
      @game.loser_id = 2
    else
      @game.winner_id = 2
      @game.loser_id = 1
    end
    @game.save!
  end

end
