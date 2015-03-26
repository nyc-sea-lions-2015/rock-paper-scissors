class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :user1, class_name: "User"
      t.references :user2, class_name: "User"
      t.integer :winner_id
      t.integer :loser_id
      t.string :choice_1
      t.string :choice_2

      t.timestamps null: false
    end
  end
end
