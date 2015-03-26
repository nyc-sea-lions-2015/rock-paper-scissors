class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|

      t.string :name, null: false
      t.string :img_path

      t.timestamps null: false
    end
  end
end
