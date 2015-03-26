class RockPaperScissors
  attr_reader :player1_id
  def initialize(player1_id, player2_id, token1, token2)
    @player1 = player1_id
    @player2 = player2_id
    @token1 = token1
    @token2 = token2
  end

  def play
    #Return id of winner and the token they used
    token1, token2 = @token1, @token2
    player1, player2 = @player1, @player2
    if token1 == token2
      draw
    end
    case token1
    when "Parchment"
      case token2
      when "The Rock"
        win(player1, player2, token1, token2)
      when "Fiskars"
        win(player2, player1, token1, token2)
      end
    when "The Rock"
      case token2
      when "Parchment"
        win(player2, player2, token1, token2)
      when "Fiskars"
        win(player1, token1, token2)
      end
    when "Fiskars"
      case token2
      when "Parchment"
          win(player1, player2, token1, token2)
      when "The Rock"
          win(player2, player1, token1, token2)
      end
    end
  end

  def draw
    "We have no winner, same throw made."
  end

  def win(winning_player, losing_player, token1, token2)
    "#{winning_player} won when throwing #{token1} and
    #{losing_player} lost when throwing #{token2}"
  end

end
