class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :user_1_ID, index: true
      t.integer :user_2_ID, index: true
      t.integer :choice_1_ID, index: true
      t.integer :choice_2_ID, index: true

      t.timestamps null: false
    end
  end
end
