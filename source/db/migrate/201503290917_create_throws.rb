class CreateThrows < ActiveRecord::Migration
  def up
    create_table :throws do |t|
      t.integer :game_id
      t.integer :user_id
      t.integer :token_id
    end
  end

  def down
    drop_table :throws
  end
end
