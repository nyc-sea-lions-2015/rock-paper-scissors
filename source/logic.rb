require_relative 'config/application'

class Logic
  def initialiize(choice1, choice2)
    choice1, choice2 = @choice1, @choice2
    Game.create(  player_1: Player.find_by(id: 1),
                  player_2: Player.find_by(id: 2),
                  choice_1: @choice1,
                  choice_2: @choice2)
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
    Game.winner = (@choice1 == true ? player_1 : player_2)
  end


end

