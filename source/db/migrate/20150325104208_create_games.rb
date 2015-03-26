class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :user1
      t.references :user2
      t.string :winner
      t.string :loser
      t.references :token1, class_name: "Token", foreign_key: :token1_id
      t.references :token2, class_name: "Token", foreign_key: :token2_id
    end
  end
end
