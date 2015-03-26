class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :winner, :class_name => 'User', null: false
      t.references :loser, :class_name => 'User', null: false
      t.references :winner_token, :class_name => 'Token', null: false
      t.references :loser_token, :class_name => 'Token', null: false
    end
  end
end
