class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :user_1_id, null: false
      t.integer :user_2_id, null: false
      t.integer :user_1_token_id, null: false
      t.integer :user_2_token_id, null: false

      t.timestamps null: false
    end
  end
end
