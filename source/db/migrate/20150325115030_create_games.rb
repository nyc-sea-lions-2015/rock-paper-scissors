class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :winner_id, null: false
      t.integer :loser_id, null: false
      t.integer :winning_token_id, null: false
      t.integer :losing_token_id, null:false
    end
  end
end
