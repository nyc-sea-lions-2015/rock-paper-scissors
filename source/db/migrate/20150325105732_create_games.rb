class CreateGames < ActiveRecord::Migration
  def change
      create_table :games do |t|
      t.references :player_1, :class_name => 'User'
      t.references :player_2, :class_name => 'User'
      t.references :token_1, :class_name => 'Token'
      t.references :token_2, :class_name => 'Token'
      t.integer :winner_id
      t.integer :loser_id
      t.string :winning_token
      t.string :losing_token

      t.timestamps null: false
    end
  end
end
