class Game < ActiveRecord::Base
  belongs_to :winner, class_name: "Player"
  belongs_to :looser, class_name: "Player"
end
