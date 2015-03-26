class Token < ActiveRecord::Base
has_many :wins, :class_name => 'Game', :foreign_key => 'winning_token_id'
has_many :loses, :class_name => 'Game', :foreign_key => 'losing_token_id'
end
