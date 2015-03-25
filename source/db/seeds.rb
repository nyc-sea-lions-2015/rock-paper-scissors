players = ['player_one', 'player_two']

players.each do |player|
  User.create({:name => player})
end

tokens = [['rock', 'player_one', '/public/imgs/rock.png'], ['paper', 'player_two', '/public/imgs/note-paper.png']]

tokens.each do |token|
  Token.create({:move => token[0], :player => User.find_by(:name => token[1]), :img_path => token[2]})
end

Game.create(winner: User.find(1), loser: User.find(2))
