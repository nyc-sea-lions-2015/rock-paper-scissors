class CreateUsers < ActiveRecord::Migration
  def change
    t.string :name, null: false, limit: 225

    t.timestamps null: false
  end
end
