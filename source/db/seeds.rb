tokens = ["rock", "paper", "scissors"]

tokens.each_with_index do |token, i|
  imgs = ["/imgs/rock1.png", "/imgs/paper1.png", "/imgs/scissors1.png"]
  Token.create(name: token, image: imgs[i])
end

users = ["John", "Patrick", "Laura", "Cynthia"]

users.each do |user|
  User.create(name: user)
end
