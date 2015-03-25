require 'sinatra'

class RockPaperScissors
  attr_reader :players, :tokens
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end


end
