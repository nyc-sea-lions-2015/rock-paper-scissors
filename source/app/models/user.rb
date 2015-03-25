class User < ActiveRecord::Base
  has_many :games

  validates :player, presence: true
end