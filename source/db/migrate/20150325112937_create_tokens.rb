class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :name, null: false
      t.binary :image, null: false

      t.timestamps null: false
    end
  end
end
