class Game < ActiveRecord::Base
  belongs_to :winner, :class_name => 'User'
  belongs_to :loser, :class_name => 'User'
  belongs_to :winning_token, :class_name => 'Token'
  belongs_to :losing_token, :class_name => 'Token'
end