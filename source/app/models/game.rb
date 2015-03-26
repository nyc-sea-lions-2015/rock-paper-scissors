class Game < ActiveRecord::Base
  belongs_to :player_1, :class_name => 'User'
  belongs_to :player_2, :class_name => 'User'
  belongs_to :player_1_token, :class_name => 'Token'
  belongs_to :player_2_token, :class_name => 'Token'


  def winner
    #player 1 winning scenarios
    if (player_1_token.name == 'rock' &&
        player_2_token.name == 'scissors') ||
       (player_1_token.name == 'paper' &&
        player_2_token.name == 'rock') ||
       (player_1_token.name == 'scissors' &&
        player_2_token.name == 'paper')
       return player_1
    elsif
    #player 2 winning scenarios
       (player_2_token.name == 'rock' &&
        player_1_token.name == 'scissors') ||
       (player_2_token.name == 'paper' &&
        player_1_token.name == 'rock') ||
       (player_2_token.name == 'scissors' &&
        player_1_token.name == 'paper')
       return player_2
    #ties
    else
      "Draw."
    end

  end
end

