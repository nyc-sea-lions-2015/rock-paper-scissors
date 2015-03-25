class Token < ActiveRecord::Base
  has_many :game_tokens
  has_many :games, through :game_tokens # unsure about this relationship

  validates :name, presence: true, uniqueness: true
  validates :image, presence: true
end
