class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :user_1, null: false
      t.string :user_2, null: false
      t.string :winner
      t.string :loser
      t.string :choice_1, null: false
      t.string :choice_2, null: false

      t.timestamps null: false
    end
  end
end
