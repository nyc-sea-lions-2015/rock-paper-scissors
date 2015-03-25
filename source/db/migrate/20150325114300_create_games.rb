class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :winner
      t.references :loser
      t.string :choice1
      t.string :choice2

      t.timestamps
    end
  end
end