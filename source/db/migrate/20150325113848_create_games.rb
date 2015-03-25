class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :winner_id, :class_name => 'User', null: true
      t.string :loser_id, :class_name => 'User', null: true
      t.string :winning_token_id, null: true
      t.string :winning_token_id, null: true

      t.timestamps null:false
    end
  end
end
