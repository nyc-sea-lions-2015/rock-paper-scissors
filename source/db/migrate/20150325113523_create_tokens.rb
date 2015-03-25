class CreateTokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.string :name
      t.references :game

      t.timestamp
    end
  end
end

