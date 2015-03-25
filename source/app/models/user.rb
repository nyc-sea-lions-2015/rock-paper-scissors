class User < ActiveRecord::Base
  has_many :user_one_games,
           :foreign_key => 'user_one_id',
           :class_name => "Game"
  has_many :user_two_games,
           :foreign_key => 'user_two_id',
           :class_name => "Game"
end
