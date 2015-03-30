class CreateUsers < ActiveRecord::Migration
  def up
    create_table :users do |t|
      t.string :name, null: false, limit: 50
    end
  end

  def down
    drop_table :users
  end
end
