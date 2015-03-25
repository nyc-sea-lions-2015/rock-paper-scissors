class Game < ActiveRecord::Base
  has_many :players
  has_many :pokemons
  belongs_to :player_1, class_name: 'Player'
  belongs_to :player_2, class_name: 'Player'
end
