class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :name, null: false
      t.string :image
    end
  end
end
