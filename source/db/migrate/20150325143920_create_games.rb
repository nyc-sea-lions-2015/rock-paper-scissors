class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :winner, null: false
      t.integer :loser, null: false
      t.integer :winner_token, null: false
      t.integer :loser_token, null: false

      t.timestamps null: false
    end
  end
end
