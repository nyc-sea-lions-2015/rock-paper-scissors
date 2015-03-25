get "/game" do
  @player1 = Player.find_by(id: 1)
  @player2 = Player.find_by(id: 2)
  erb :"gameboard"
end

post "/game" do
  "#{params}"
end
