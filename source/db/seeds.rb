player1 = User.create(player: "Player 1")
player2 = User.create(player: "Player 2")

rock = Token.create(name: "rock", img_path: "/public/img/poop.jpg")
scissors = Token.create(name: "scissors", img_path: "/public/img/scissors.jpg")
paper = Token.create(name: "paper", img_path: "/public/img/paper.jpg")

# game = Game.create(user1: player1, user_2: player2,)
