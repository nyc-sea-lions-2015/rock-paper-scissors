class Game < ActiveRecord::Base
  has_many :players, :options
  belongs_to :player_1, :player_2, class_name: 'Player'
end
