class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :winner, null: false
      t.references :loser, null: false
      t.references :winner_token, null: false
      t.references :loser_token, null: false

      t.timestamps null: false
    end
  end
end
