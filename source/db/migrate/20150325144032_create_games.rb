class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :player_1, class_name: 'Player'
      t.references :player_2, class_name: 'Player'
      t.integer :winner_id
      t.integer :loser_id
      t.integer :choice_1
      t.integer :choice_2

      t.timestamps null:false
    end
  end
end
