class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :winner_id, null: false
      t.integer :looser_id, null: false
      t.integer :token1_id, null: false
      t.integer :token2_id, null: false

      t.timestamp
    end
  end
end
