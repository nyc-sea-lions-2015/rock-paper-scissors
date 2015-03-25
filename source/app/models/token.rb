class Token < ActiveRecord::Base
	belongs_to :game

	validates :name, presence: true
	validates :image, presence: true

end