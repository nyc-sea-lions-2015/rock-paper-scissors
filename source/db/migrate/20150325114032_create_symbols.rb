class CreateSymbols < ActiveRecord::Migration
  def change
    create_table :symbols do |t|
      t.string :name
      t.string :image
  end
end
