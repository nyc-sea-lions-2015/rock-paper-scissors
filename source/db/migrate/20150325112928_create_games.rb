class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :user_1_ID, null: false
      t.integer :user_1_ID, null: false
      t.string :winner, null: true
      t.string :loser, null: true
      t.string :choice_1, null: true
      t.string :choice_2, null: true

      t.timestamps null: false
    end
  end
end
