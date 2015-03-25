class CreateHands < ActiveRecord::Migration
  def change
    create_table(:hands) do |t|
      t.column :symbol, :string, limit: 20, null: false
      t.column :image_path, :string, null: false

      t.timestamps
    end
  end
end
