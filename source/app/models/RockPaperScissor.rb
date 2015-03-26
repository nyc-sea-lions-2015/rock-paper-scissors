class RockPaperScissors
  attr_reader :player1_id
  def initialize(player1_id, player2_id, token1, token2)
    @player1 = player1_id
    @player2 = player2_id
    @token1 = token1
    @token2 = token2
    @score1 = 0
    @score2 = 0
  end

  def play
    #Return id of winner and the token they used
    token1, token2 = @token1, @token2
    player1, player2 = @player1, @player2
    case token1
    when "Parchment"
        case token2
        when "Parchment"
            draw(token1, token2)
        when "The Rock"
            win(player1, token1, token2)
        when "Fiskars"
            win(player2, token1, token2)
        else
            raise "Invalid choice by Player Two."
        end
    when "The Rock"
        case token2
        when "Parchment"
            win(player2, token1, token2)
        when "The Rock"
            draw(token1, token2)
        when "Fiskars"
            win(player1, token1, token2)
        else
            raise "Invalid choice by Player Two."
        end
    when "Fiskars"
        case token2
        when "Parchment"
            win(player1, token1, token2)
        when "The Rock"
            win(player2, token1, token2)
        when "Fiskars"
            draw(token1, token2)
        else
            raise "Invalid choice by Player Two."
        end
    else
        raise "Invalid choice by Player One."
    end
  end

  def results
    match = "Player One vs. Player Two\n" +
                "\tPlayer One: #{@score1}\n" +
                "\tPlayer Two: #{@score2}\n"
    if @score1 == @score2
        match + "\tDraw\n"
    elsif @score1 > @score2
        match + "\tPlayer One Wins\n"
    else
        match + "\tPlayer Two Wins\n"
    end
end

private

  def draw( token1, token2 )
      @score1 += 0.5
      @score2 += 0.5
      @player1.result(token1, token2, :draw)
      @player2.result(token2, token1, :draw)
  end

  def win( winner, token1, token2 )
      if winner == @player1
          @score1 += 1
          @player1.result(token1, token2, :win)
          @player2.result(token2, token1, :lose)
      else
          @score2 += 1
          @player1.result(token1, token2, :lose)
          @player2.result(token2, token1, :win)
      end
  end
end
