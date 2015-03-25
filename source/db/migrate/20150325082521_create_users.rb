class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, unique: true, null: false
      t.string :password_digest, null: false
      t.string :spiritanimal
      t.string :choice
      t.string :spiritanimalname

      t.timestamps
    end
  end
end
