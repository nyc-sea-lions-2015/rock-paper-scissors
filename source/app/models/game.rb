class Game < ActiveRecord::Base
  create_table do |t|
    t.string :player_1
    t.string :player_2
    t.string :winner
    t.string :loser
    t.string :choice_1
    t.string :choice_2

    t.timestamps null:false
  end


end
