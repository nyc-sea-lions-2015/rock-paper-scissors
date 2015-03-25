class Game < ActiveRecord::Base
	has_many :users
	
	validates :name, presence: true
	validates :image, presence: true

end