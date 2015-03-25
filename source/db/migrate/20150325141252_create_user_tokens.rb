class CreateUserTokens < ActiveRecord::Migration
  def change
    create_table :user_tokens do |t|
      t.references :user, index: true
      t.references :token, index: true

      t.timestamps null: false
    end
  end
end
