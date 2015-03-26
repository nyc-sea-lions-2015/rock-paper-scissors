class Gamelogic
  def initialize(token_one, token_two)
    @token_one = token_one
    @token_two = token_two
  end

  def game
    hand = [token_one, token_two].join('_').to_sym

    rock_outcomes = { Rock_Rock: "Draw", Rock_Paper: "Lose", Rock_Scissors: "Win" }
    paper_outcomes = { Paper_Paper: "Draw", Paper_Scissors: "Lose", Paper_Rock: "Win" }
    scissors_outcomes = { Scissors_Scissors: "Draw", Scissors_Rock: "Lose", Scissors_Paper: "Win"}

    case token_one
    when "Rock"
      rock_outcomes[hand]
    when "Paper"
      paper_outcomes[hand]
    when "Scissors"
      scissors_outcomes[hand]
    else
      return
    end

  end

end
