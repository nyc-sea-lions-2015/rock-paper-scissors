class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :user_1_id, index: true
      t.integer :user_2_id, index: true
      t.integer :user_1_token_id
      t.integer :user_2_token_id

      t.timestamps null: false
    end
  end
end
