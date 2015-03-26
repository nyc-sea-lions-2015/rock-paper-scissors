class Game < ActiveRecord::Base
  belongs_to :winner, :class_name => 'User'
  belongs_to :loser, :class_name => 'User'
  belongs_to :winning_token, :class_name => 'Token'
  belongs_to :losing_token, :class_name => 'Token'

  def tie?
    winning_token_id == losing_token_id
  end
end

