class CreateUser < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :player_one, null: false
      t.string :player_two, null: false
    end
  end
end
