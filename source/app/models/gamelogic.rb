class Gamelogic
  def initialize(token_one, token_two)
    @token_one = token_one
    @token_two = token_two
  end

  def game
    hand = [token_one, token_two].join('_').to_sym

    rock_outcomes = { rock_rock: "Draw", rock_paper: "Player 2 Wins", rock_scissors: "Player 1 Wins" }
    paper_outcomes = { paper_paper: "Draw", paper_scissors: "Player 2 Wins", paper_rock: "Player 1 Wins" }
    scissors_outcomes = { scissors_scissors: "Draw", scissors_rock: "Player 2 Wins", scissors_paper: "Player 1 Wins"}

    case token_one
    when "rock"
      rock_outcomes[hand]
    when "paper"
      paper_outcomes[hand]
    when "scissors"
      scissors_outcomes[hand]
    else
      return
    end

  end

end
