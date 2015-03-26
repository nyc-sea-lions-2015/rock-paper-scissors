player1 = User.create(name: "player_1")
player2 = User.create(name: "player_2")

rock = Token.create(name: "rock", image_URL: "../public/imgs/paper.png")
scissors = Token.create(name: "scissors", image_URL: "../public/imgs/scissors.png")
paper = Token.create(name: "paper", image_URL: "../public/imgs/rock.png")
