class CreateTokens < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :image_URL, null: false

      t.timestamps, null: false
    end
  end
end
