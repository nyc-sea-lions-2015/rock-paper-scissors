class Token < ActiveRecord::Base
has_many :winner_tokens, :class_name => 'Game', :foreign_key => 'winner_token_id'
has_many :loser_tokens, :class_name => 'Game', :foreign_key => 'loser_token_id'
end
