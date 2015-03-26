nick = Player.create(name: "Nick")
dana = Player.create(name: "Dana")
["rock", "paper", "scissors"].each do |t|
  Token.create!(name: t)
end
