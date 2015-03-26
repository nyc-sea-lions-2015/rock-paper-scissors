class Game < ActiveRecord::Base
  has_many :tokens
  belongs_to :user1, class_name: "User"
  belongs_to :user2, class_name: "User"
  belongs_to :choice_1, class_name: "Token"
  belongs_to :choice_2, class_name: "Token"





end
