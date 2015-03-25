class Player < ActiveRecord::Base
  has_many :wins, class_name: "Game", foreign_key: 'winner_id'
  has_many :looses, class_name: "Game", foreign_key: 'looser_id'
end
