class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :name, null: false, unique: true, limit: 30
      t.string :image_path, null: false

      t.timestamps null: false
    end
  end
end
