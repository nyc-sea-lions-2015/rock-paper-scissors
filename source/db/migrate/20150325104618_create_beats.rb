class CreateBeats < ActiveRecord::Migration
  def change
    create_table(:beats) do |t|
      t.belongs_to :winner,
                   class_name: 'Hand',
                   foreign_key: 'winner_id', 
                   index: true,
                   null: false
      t.belongs_to :loser,
                   class_name: 'Hand',
                   foreign_key: 'loser_id', 
                   index: true,
                   null: false

      t.timestamps
    end
  end
end
