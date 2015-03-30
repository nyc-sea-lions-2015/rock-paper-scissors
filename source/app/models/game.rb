class Game < ActiveRecord::Base
  belongs_to :north_player, class_name: 'User'
  belongs_to :south_player, class_name: 'User'
  belongs_to :winning_player, class_name: 'User'
end
