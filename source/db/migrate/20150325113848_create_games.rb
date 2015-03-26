class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :winner, :class_name => 'User', null: true
      t.references :loser, :class_name => 'User', null: true
      t.references :winning_token, :class_name => 'Token', null: true
      t.references :losing_token, :class_name => 'Token', null: true

      t.timestamps null:false
    end
  end
end
