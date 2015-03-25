User.create(:player => "Player 1")
User.create(:player => "Player 2")

Token.create(:name => "Rock", :image => ("/imgs/rock.png"))
Token.create(:name => "Paper", :image => ("/imgs/paper.png"))
Token.create(:name => "Scissors", :image => ("/imgs/scissors.png"))

Game.create(:user_1_ID => 1, :user_2_ID => 2)