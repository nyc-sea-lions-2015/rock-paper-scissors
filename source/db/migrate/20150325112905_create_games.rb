class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :winner, null: false
      t.references :loser, null: false
      t.timestamps null: false
    end
  end
end
