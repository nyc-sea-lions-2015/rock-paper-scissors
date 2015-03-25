class Hand < ActiveRecord::Base
  has_many :winners,
           :foreign_key => 'winner_id',
           :class_name => "Beats"
  has_many :predators, through: :winners
  has_many :losers,
           :foreign_key => 'loser_id',
           :class_name => "Beats"
  has_many :preys, through: :losers
  has_many :user_one_hand_games,
           :foreign_key => 'user_one_hand_id',
           :class_name => "Game"
  has_many :user_two__hand_games,
           :foreign_key => 'user_two_hand_id',
           :class_name => "Game"
end
