class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :name, null: false
      t.string :image_url
      t.references :game

      t.timestamps null: false
    end
  end
end
