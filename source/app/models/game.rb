class Game < ActiveRecord::Base
  has_many :tokens
  belongs_to :user1, class_name: "User"
  belongs_to :user2, class_name: "User"


end
