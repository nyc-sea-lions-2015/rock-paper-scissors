class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :user1
      t.references :user2
      t.string :winner
      t.string :loser
      t.references :win_token, class_name: "Token"
      t.references :lose_token, class_name: "Token"
    end
  end
end
