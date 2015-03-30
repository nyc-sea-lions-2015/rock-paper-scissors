class CreateSymbols < ActiveRecord::Migration
  def up
    create_table :symbols do |t|
      t.string :name, null: false, limit: 50
      t.string :url
    end
  end

  def down
    drop_table :symbols
  end
end
