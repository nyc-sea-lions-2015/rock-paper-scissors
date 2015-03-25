class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :move, null: false
      t.references :player, null: false
      t.string :img_path, null: false
    end
  end
end
