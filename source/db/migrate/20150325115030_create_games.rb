class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :winner, null: false
      t.string :loser, null: false
      t.string :winning_token, null: false
      t.string :losing_token, null:false
    end
  end
end
