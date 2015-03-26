class Game < ActiveRecord::Base
  has_many :players
  has_many :pokemons
  belongs_to :winner, class_name: 'Player', foreign_key: "winner_id"
  belongs_to :loser, class_name: 'Player', foreign_key: "loser_id"
  belongs_to :choice_1, class_name: 'Pokemon', foreign_key: "choice_1_id"
  belongs_to :choice_2, class_name: 'Pokemon', foreign_key: "choice_1_id"
end
