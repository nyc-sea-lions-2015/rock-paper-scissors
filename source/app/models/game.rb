class Game < ActiveRecord::Base
  belongs_to :winner, :class_name => 'User', :foreign_key => 'winner_id'
  belongs_to :loser, :class_name => 'User', :foreign_key => 'loser_id'
  belongs_to :winning_token, :class_name => "Token", :foreign_key => 'winning_token_id'
  belongs_to :losing_token, :class_name => "Token", :foreign_key => 'losing_token_id'
end

