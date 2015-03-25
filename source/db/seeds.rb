["Batman", "Joker"].each do |player_name|
  User.create!(name: player_name)
end

token1 = {
  name: "Rock",
  image_url: "/images/rock.png"
}

token2 = {
  name: "Paper",
  image_url: "/images/paper.png"
}

token3 = {
  name: "Scissors",
  image_url: "/images/scissors.png"
}

Token.create!(token1)
Token.create!(token2)
Token.create!(token3)
