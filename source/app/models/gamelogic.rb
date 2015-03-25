class GameLogic
  attr_reader :u1choice, :u2choice
  def initialize(u1choice, u2choice)
    @u1choice = u1choice
    @u2choice = u2choice
  end

  def who_won
    if (@u1choice == "paper") && (@u2choice == "rock")
      return 1

    elsif (@u1choice == "rock") && (@u2choice == "scissors")
      return 1

    elsif (@u1choice == "scissors") && (@u2choice == "paper")
      return 1

    elsif (@u1choice == @u2choice)
      return "tie"

    else
      return 2
    end
  end

  def who_lost
    2 if who_won == 1
    1 if who_won == 2
    "tie" if who_won == "tie"
  end
end