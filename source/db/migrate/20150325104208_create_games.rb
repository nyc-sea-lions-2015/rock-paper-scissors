class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :winner, class_name: "User"
      t.references :loser, class_name: "User"
      t.references :win_token, class_name: "Token"
      t.references :lose_token, class_name: "Token"
    end
  end
end
