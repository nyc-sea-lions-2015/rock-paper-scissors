class Logic
  attr_reader :status
  def initialize(game, choice1, choice2)
    @game = game
    @status = true
    @choice1, @choice2 = choice1, choice2
    if checker
      rules
      choose_winner
    end
  end

  def checker
    @status = false if @choice1 == @choice2
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
  end

end
