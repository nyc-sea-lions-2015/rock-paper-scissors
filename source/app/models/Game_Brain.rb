class GameBrain
  def initialize(game)
    @player_one = game.player_one_id
    @player_two = game.player_two_id
    @player_one_choice = game.choice_one_id
    @player_two_choice = game.choice_two_id
  end

  def winner
    if (@player_one_choice == 1 && @player_two_choice == 2)
      @player_one
    elsif (@player_one_choice == 1 && @player_two_choice == 3)
      @player_two
    elsif (@player_one_choice == 2 && @player_two_choice == 1)
      @player_two
    elsif (@player_one_choice == 2 && @player_two_choice == 3)
      @player_one
    elsif (@player_one_choice == 3 && @player_two_choice == 1)
      @player_one
    elsif (@player_one_choice == 3 && @player_two_choice == 2)
      @player_two
    else
      "tie"
    end
  end
end
