class CreateGames < ActiveRecord::Migration
  def up
    create_table :games do |t|
      t.integer :north_player_id, null: false
      t.integer :south_player_id, null: false
      t.integer :north_token_id, null: false
      t.integer :south_token_id, null: false

      t.integer :winning_player_id
      t.integer :losing_player_id
    end
  end

  def down
    drop_table :games
  end
end
