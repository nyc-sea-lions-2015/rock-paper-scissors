["ROCK WIZARDDD", "BARBER SCISSORS", "2PLY TOILET PPAER"].each do |t|
  Token.create(name: t)
end

["Max", "Ryan"].each do |u|
  User.create(name: u)
end
