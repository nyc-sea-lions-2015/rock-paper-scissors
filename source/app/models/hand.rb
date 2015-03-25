class Hand < ActiveRecord::Base
  has_many :conqueror,
           foreign_key: 'winner_id',
           class_name: "Beat",
           dependent: :destroy
  has_many :conquered,
           foreign_key: 'loser_id',
           class_name: "Beat"
  has_many :losers, through: :conqueror
  has_many :winners, through: :conquered
  has_many :user_one_hand_games,
           foreign_key: 'user_one_hand_id',
           class_name: "Game"
  has_many :user_two_hand_games,
           :foreign_key => 'user_two_hand_id',
           :class_name => "Game"
end
