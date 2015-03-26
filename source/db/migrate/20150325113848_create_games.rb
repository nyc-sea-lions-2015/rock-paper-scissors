class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :winner, :class_name => 'User', null: true
      t.references :loser, :class_name => 'User', null: true
      t.references :player_1_token, :class_name => 'Token', null: true
      t.references :player_2_token, :class_name => 'Token', null: true

      t.timestamps null:false
    end
  end
end
