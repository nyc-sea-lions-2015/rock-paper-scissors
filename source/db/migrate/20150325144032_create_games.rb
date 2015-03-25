class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :player_1, class_name: 'Player'
      t.references :player_2, class_name: 'Player'
      t.string :winner
      t.string :loser
      t.string :choice_1
      t.string :choice_2

      t.timestamps null:false
    end
  end
end
