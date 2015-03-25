class CreateGames < ActiveRecord::Migration
  def change
      create_table :games do |t|
      t.references :player_1, :class_name => 'User', :foreign_key => :player_1_id
      t.references :player_2, :class_name => 'User', :foreign_key => :player_2_id
      t.references :token_1, :class_name => 'Token', :foreign_key => :token_1_id
      t.references :token_2, :class_name => 'Token', :foreign_key => :token_2_id

      t.timestamps null: false
    end
  end
end
