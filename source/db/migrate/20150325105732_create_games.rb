class CreateGames < ActiveRecord::Migration
  def change
      create_table :games do |t|
      t.string :winning_player
      t.string :losing_player
      t.string :winning_symbol
      t.string :losing_symbol
      t.references :user

      t.timestamps null: false
    end
  end
end
