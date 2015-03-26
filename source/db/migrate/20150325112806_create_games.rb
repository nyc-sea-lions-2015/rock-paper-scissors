class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :user1, class_name: "User"
      t.references :user2, class_name: "User"
      t.integer :winner_id
      t.integer :loser_id
      t.string :choice_1, null: false
      t.string :choice_2, null: false

      t.timestamps null: false
    end
  end
end
