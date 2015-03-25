["Batman", "Joker"].each do |player_name|
  User.create!(name: name)
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
