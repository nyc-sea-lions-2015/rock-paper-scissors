class Game < ActiveRecord::Base
  belongs_to :player_1, class_name: 'User'
  belongs_to :player_2, class_name: 'User'
  belongs_to :player_1_throw, class_name: 'Token'
  belongs_to :player_2_throw, class_name: 'Token'
end
