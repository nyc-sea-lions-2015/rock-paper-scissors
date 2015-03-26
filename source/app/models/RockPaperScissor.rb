class RockPaperScissors
  attr_reader :player1_id
  def initialize(player1_id, player2_id, token1, token2)
    @player1 = player1_id
    @player2 = player2_id
    @token1 = token1
    @token2 = token2
  end

  def play
    token1, token2 = @token1, @token2
    player1, player2 = @player1, @player2
    if token1 == token2
      draw
    end
    case token1
    when "Parchment"
      case token2
      when "The Rock"
        results(player1, player2, token1, token2)
      when "Fiskars"
        results(player2, player1, token1, token2)
      end
    when "The Rock"
      case token2
      when "Parchment"
        results(player2, player1, token1, token2)
      when "Fiskars"
        results(player1, player2, token1, token2)
      end
    when "Fiskars"
      case token2
      when "Parchment"
          results(player1, player2, token1, token2)
      when "The Rock"
          results(player2, player1, token1, token2)
      end
    end
  end

  def draw
    "We have no winner, same throw made."
  end

  def results(winning_player, losing_player, token1, token2)
    [winning_player, losing_player, token1, token2]
  end

end
