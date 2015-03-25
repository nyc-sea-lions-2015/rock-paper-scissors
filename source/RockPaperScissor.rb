require 'sinatra'

class RockPaperScissors
  attr_reader :players, :tokens
  def initialize(player1, player2, player1_token, player1_token)
    @player1 = player1
    @player2 = player2
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

player1 = User.find_by_id(1)
player2 = User.find_by_id(2)
rock = Token.find_by(name: "Rock")
paper = Token.find_by(name: "Paper")
scissors = Token.find_by(name: "Scissors")
game1 = RockPaperScissors.new(player1, player2, rock, scissors)

