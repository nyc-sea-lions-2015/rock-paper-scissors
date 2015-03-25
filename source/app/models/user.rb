class User < ActiveRecord::Base
  validates :player, presence: true
end