class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false, limit: 100
      t.references :game

      t.timestamps null: false
    end
  end
end

