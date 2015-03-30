[Game, User, Token].each{ |klass| klass.destroy_all }

puts "Creating users"

north_user = User.create name: "Player One"
south_user = User.create name: "Player Two"

%w, rock paper scissors,.each do |symname|
  Token.create name: symname, url: "n/a"
end

demo_game = Game.create
north_throw = Throw.create game_id: demo_game.id, user_id: north_user.id, token_id: Token.first.id
south_throw = Throw.create game_id: demo_game.id, user_id: south_user.id, token_id: Token.last.id
demo_game.winning_throw = north_throw
demo_game.losing_throw = south_throw
demo_game.save
