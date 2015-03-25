class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :user_1_ID, null: false
      t.integer :user_2_ID, null: false
      t.string :winner_ID, null: true
      t.string :loser_ID, null: true
      t.string :choice_1_ID, null: true
      t.string :choice_2_ID, null: true

      t.timestamps null: false
    end
  end
end
