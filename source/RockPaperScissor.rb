require 'sinatra'

class RockPaperScissors
  attr_reader :players, :tokens
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play(match)
    match.times do

    end
  end

end

class Player
  @@players = [ ]

  def self.inherited(player)
    @@players << player
  end

  def self.each_pair
    (0..(@@player))
  end

end


