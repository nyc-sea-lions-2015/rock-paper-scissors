class User < ActiveRecord::Base
	has_many :wins, class_name => "Game", :foreign_key => "winner_id"
	has_many :losses, class_name => "Game", :foreign_key => "losser_id"

	validates :player, presence: true
end
