class RenameSymbols < ActiveRecord::Migration
  def up
    drop_table :symbols
    create_table :tokens do |t|
      t.string :name, null: false, limit: 50
      t.string :url
    end
  end

  def down
    raise ActiveRecord::IrreversibleMigration 
  end
end
