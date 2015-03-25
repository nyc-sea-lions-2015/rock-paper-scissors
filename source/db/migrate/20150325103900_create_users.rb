class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    t.integer :player_number
    t.string :first_name
    t.integer :age

    t.timestamps
    end
  end
end