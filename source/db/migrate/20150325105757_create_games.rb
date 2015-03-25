class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :winner
      t.string :user_choice
      t.string :guest_choice
      t.belongs_to :user

      t.timestamps
    end
  end
end
