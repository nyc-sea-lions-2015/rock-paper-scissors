User.create(:player => "Player 1")
User.create(:player => "Player 2")

Token.create(:name => "Rock", :image => URL("/imgs/rock.png"))
Token.create(:name => "Paper", :image => URL("/imgs/paper.png"))
Token.create(:name => "Scissors", :image => URL("/imgs/scissors.png"))