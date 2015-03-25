class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :name, null: false, limit: 56
      t.string :filepath, null: false

      t.timestamps null: false
    end
  end
end
