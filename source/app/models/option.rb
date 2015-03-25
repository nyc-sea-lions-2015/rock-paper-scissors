class Option < ActiveRecord::Base
  belongs_to :game
  create_table do |t|
    t.string :name
    t.string :img

    t.timestamps null: false
  end
end
