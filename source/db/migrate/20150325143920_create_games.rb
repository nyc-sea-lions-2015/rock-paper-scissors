class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :winner_id, null: false
      t.integer :loser_id, null: false
      t.integer :winner_token_id, null: false
      t.integer :loser_token_id, null: false

      t.timestamps null: false
    end
  end
end
