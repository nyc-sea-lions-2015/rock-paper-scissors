class Game < ActiveRecord::Base
  belongs_to :user

  def shoot(player_choice)
    @player_choice = player_choice
    @computer_roll = rand(100)
    case @computer_roll
      when 1..33
        @computer_roll = "Rock"
      when 34..66
        @computer_roll = "Paper"
      when 67...100
        @computer_roll = "Scissors"
      end

    if ( @computer_roll == "Paper" && @player_choice == "Rock")
      return "lose"
    elsif ( @computer_roll == "Scissors" && @player_choice == "Paper")
      return "lose"
    elsif ( @computer_roll == "Rock" && @player_choice == "Scissors")
      return "lose"
    else
      return "win"
    end
  end
end
