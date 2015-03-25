class CreateGames < ActiveRecord::Migration
  def change
    create_table(:games) do |t|
      t.belongs_to :user_one,
                   class_name: 'User',
                   foreign_key: 'user_one_id', 
                   index: true,
                   null: false
      t.belongs_to :user_one_hand,
                   class_name: 'Hand',
                   foreign_key: 'user_one_hand_id', 
                   index: true,
                   null: false
      t.belongs_to :user_two,
                   class_name: 'User',
                   foreign_key: 'user_two_id', 
                   index: true,
                   null: false
      t.belongs_to :user_two_hand,
                   class_name: 'Hand',
                   foreign_key: 'user_two_hand_id', 
                   index: true,
                   null: false

      t.timestamps
    end
  end
end
