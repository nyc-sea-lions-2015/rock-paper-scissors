class Game < ActiveRecord::Base
  belongs_to :user_one,
             :foreign_key => 'user_one_id',
             :class_name => "User"
  belongs_to :user_one_hand,
             :foreign_key => 'user_one_hand_id',
             :class_name => "Hand"
  belongs_to :user_two,
             :foreign_key => 'user_two_id',
             :class_name => "User"
  belongs_to :user_two_hand,
             :foreign_key => 'user_two_hand_id',
             :class_name => "Hand"
end
