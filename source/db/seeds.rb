["Batman", "Joker"].each do |player_name|
  User.create!(name: player_name)
end

token1 = {
  name: "The Rock",
  image_url: "/images/rock.png"
}

token2 = {
  name: "Parchment",
  image_url: "/images/paper.png"
}

token3 = {
  name: "Fiskars",
  image_url: "/images/scissors.png"
}

Token.create!(token1)
Token.create!(token2)
Token.create!(token3)
