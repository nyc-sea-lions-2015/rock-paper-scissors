class Player < ActiveRecord::Base
  has_many :games
  create_table :players do |t|
    t.string :name

    t.timestamps null: false
  end

end
