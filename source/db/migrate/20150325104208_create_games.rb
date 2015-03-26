class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :user1
      t.references :user2
      t.string :winner
      t.string :loser
      t.references :win_token, class_name: "Token", foreign_key: :win_token_id
      t.references :lose_token, class_name: "Token", foreign_key: :lose_token_id
    end
  end
end
