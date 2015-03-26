["rock", "paper", "scissors"].each do |t|
  Token.create(name: t, image: "/imgs/"+t+".png")
end

["Max", "Ryan"].each do |u|
  User.create(name: u)
end
