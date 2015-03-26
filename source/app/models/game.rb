class Game < ActiveRecord::Base
  belongs_to :player_1, :class_name => 'User'
  belongs_to :player_2, :class_name => 'User'
  belongs_to :player_1_token, :class_name => 'Token'
  belongs_to :player_2_token, :class_name => 'Token'

  def winner

    if player_1_token.name == 'rock' &&
      player_2_token.name == 'scissors'
      return player_1
    end

  end
end

