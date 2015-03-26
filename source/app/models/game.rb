class Game < ActiveRecord::Base
  belongs_to :winner, :class_name => 'User'
  belongs_to :loser, :class_name => 'User'
  belongs_to :winner_token, :class_name => "Token"
  belongs_to :loser_token, :class_name => "Token"
end

