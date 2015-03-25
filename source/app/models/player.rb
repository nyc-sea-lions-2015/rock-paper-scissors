class Player < ActiveRecord::Base
  create_table do |t|
    t.string :name

    t.timestamps null: false
  end

end
