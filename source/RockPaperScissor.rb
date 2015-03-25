class RockPaperScissors
  def initialize(first_player, second_player, player1_token, player1_token)
    @player1 = first_player
    @player2 = second_player
    @player1_token = player1_token
    @player2_token = player2_token
  end

  def play
    match.times do
      case player1_token
      when "Paper"
        case player2_token
        when "Rock"
          "player 1 wins"
        when "Paper"
          "no winner"
        when "Scissors"
          "player 2 wins"
        else
          raise "Invalid choice by #{@player2}"
        end
      when "Rock"
        case player2_token
        when "Rock"
          "player 1 wins"
        when "Paper"
          "no winner"
        when "Scissors"
          "player 2 wins"
        else
          raise "Invalid choice by #{@player2}"
        end
      when "Scissors"
        case player2_token
        when "Rock"
          "player 1 wins"
        when "Paper"
          "no winner"
        when "Scissors"
          "player 2 wins"
        else
          raise "Invalid choice by #{@player2}"
        end
      else
        raise "Invalid choice by #{@player1}"
      end
    end
  end

end

