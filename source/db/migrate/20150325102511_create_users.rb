class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :player, null: false
      t.string :player_choice, null: true
      t.integer :outcome, null: true

      t.timestamps null: false
    end
  end
end
