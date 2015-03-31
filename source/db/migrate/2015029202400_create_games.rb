class CreateGames < ActiveRecord::Migration
  def up
    create_table :games do |t|
      t.integer :winning_throw_id
      t.integer :losing_throw_id
    end
  end

  def down
    drop_table :games
  end
end
