class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :score
      t.references :user
    end
  end
end
