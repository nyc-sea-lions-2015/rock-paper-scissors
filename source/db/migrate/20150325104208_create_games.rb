class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :winner
      t.string :loser
      t.string :p1symbol
      t.string :p2symbol
  end
end
