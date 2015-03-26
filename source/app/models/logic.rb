class Logic
  attr_reader :status
  def initialize(game, choice1, choice2, player1, player2)
    @game = game
    @status = true
    @choice1, @choice2 = choice1, choice2
    @player1, @player2 = player1, player2
    checker
    if @status
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
    if rules
      @game.winner = @player1
      @game.loser = @player2
    else
      @game.winner = @player2
      @game.loser = @player1
    end
  end

end
