class Game < ActiveRecord::Base
  belongs_to :winner, :class_name => 'User'
  belongs_to :loser, :class_name => 'User'
  belongs_to :winner_token, :class_name => 'Token'
  belongs_to :loser_token, :class_name => 'Token'

  validates :winner, :loser, :winner_token, :loser_token, presence: true
end
