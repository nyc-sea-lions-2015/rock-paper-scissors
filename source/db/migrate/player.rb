class Player < ActiveRecord::Migration
  create_table :players do |t|
    t.string :name

    t.timestamps null: false
  end

end
