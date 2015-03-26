class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :player_1_id, index: true
      t.integer :player_2_id, index: true
      t.integer :player_1_token_id, index: true
      t.integer :player_2_token_id, index: true

      t.timestamps null: false
    end
  end
end
