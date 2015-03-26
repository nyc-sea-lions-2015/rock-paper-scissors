class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :winner_id, class_name: "User"
      t.integer :loser_id, class_name: "User"
      t.integer :win_token_id, class_name: "Token"
      t.integer :lose_token_id, class_name: "Token"
    end
  end
end
