class CreateTokens < ActiveRecord::Migration
  def change
    t.string :name, null: false
    t.string :img_path

    t.timestamps null: false
  end
end
