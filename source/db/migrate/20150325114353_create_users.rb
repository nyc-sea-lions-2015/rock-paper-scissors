class CreateUsers < ActiveRecord::Migration
  def change
    t.string :name, null: false

    t.timestamps
  end
end
