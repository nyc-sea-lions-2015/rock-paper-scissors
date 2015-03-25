class Option < ActiveRecord::Migration
  create_table :options do |t|
    t.string :name
    t.string :img

    t.timestamps null: false
  end
end
