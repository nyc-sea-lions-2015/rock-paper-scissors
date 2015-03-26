class User < ActiveRecord::Base
  has_many :winners, :class_name => 'Game', :foreign_key => 'winner_id'
  has_many :losers, :class_name => 'Game', :foreign_key => 'loser_id'
  validates :player, presence: true
end