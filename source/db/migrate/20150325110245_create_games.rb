class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :winner_id, null: false
      t.integer :looser_id, null: false
      t.string :winning_token, null: false
      t.string :losing_token, null: false

      t.timestamp
    end
  end
end
