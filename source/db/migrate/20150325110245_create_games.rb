class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :player_1_id, index: true
      t.integer :player_2_id, index: true
      t.integer :player_1_throw_id, index: true
      t.integer :player_2_throw_id, index: true

      t.timestamp
    end
  end
end
