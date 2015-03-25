class Game < ActiveRecord::Base
	belongs_to :winner, class_name => "User"
	belongs_to :loser, class_name => "User"

	has_many :tokens, class_name => "User"
	
	validates :name, presence: true
	validates :image, presence: true

end