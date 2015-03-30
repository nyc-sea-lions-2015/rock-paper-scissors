[User, Token].each{ |klass| klass.destroy_all }

puts "Creating users"

User.create name: "Player One"
User.create name: "Player Two"

%w, rock paper scissors,.each do |symname|
  Token.create name: symname, url: "n/a"
end
