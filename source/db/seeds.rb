players = ['player_one', 'player_two']

players.each do |player|
  User.create(:name => player)
end

tokens = [['rock', '../../imgs/rock.png'], ['paper', '../../imgs/note-paper.png'], ['scissors', '../../imgs/scissors.png']]

tokens.each do |token|
  Token.create(:name => token[0], :img_path => token[1])
end


