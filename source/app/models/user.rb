class User < ActiveRecord::Base
  has_many :wins, :class_name => 'Game', :foreign_key => 'winner_id'
  has_many :losses, :class_name => 'Game', :foreign_key => 'loser_id'
  has_one :token, :foreign_key => 'player_id'
end
