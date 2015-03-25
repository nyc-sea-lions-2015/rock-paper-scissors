class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false, limit: 30
      t.boolean :win
      t.has_one :symbol

      t.timestamps null: false
    end
  end
end
