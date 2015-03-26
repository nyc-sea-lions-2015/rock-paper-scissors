class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :winner, class_name: 'Player'
      t.references :loser, class_name: 'Player'
      t.references :choice_1, class_name: 'Pokemon'
      t.references :choice_2, class_name: 'Pokemon'

      t.timestamps null:false
    end
  end
end
