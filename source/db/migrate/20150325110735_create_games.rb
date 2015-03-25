class CreateGame < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :player_one_id, null: false
      t.integer :player_two_id, null: false
      t.string :winner
      t.string :loser
      t.integer :choice_one_id
      t.integer :choice_two_id
    end
  end
end
