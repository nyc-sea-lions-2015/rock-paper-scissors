class Game < ActiveRecord::Base
	belongs_to :winner, :class_name => 'User'
	belongs_to :loser, :class_name => 'User'

	has_many :tokens
	
end