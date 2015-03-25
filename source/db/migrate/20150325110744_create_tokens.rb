class CreateRecord < ActiveRecord::Migration
  def change
    create_table :tokens do |do|
      t.string :name, null: false
      t.string :image
    end
  end
end
