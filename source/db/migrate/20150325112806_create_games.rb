class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :user1, class_name: "User"
      t.references :user2, class_name: "User"
      t.integer :winner_id
      t.integer :loser_id
      t.references :choice_1, class_name: "Token"
      t.references :choice_2, class_name: "Token"

      t.timestamps null: false
    end
  end
end
