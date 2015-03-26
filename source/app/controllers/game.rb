get '/game' do
  images = Token.all
  erb(:game, locals: {emojis: images})
end

post '/game' do
  #has access to params
  # p params
  # p params.values
  choices = params.values
  if choices[0] != choices[1]
    current_game = Game.create(user1: User.find_by(id: 1),
                user2: User.find_by(id: 2),
                choice_1: choices[0],
                choice_2: choices[1]
      )
    logic = GameLogic.new(current_game, choices[0], choices[1])
    redirect "/game/#{current_game.id}"
  else
    redirect "/game/tie"
  end


end

get '/game/:id' do
  current_game = Game.find(params[:id])
  # return current_game.to_json
  erb(:results, locals: {game: current_game, winner: current_game.winner_id, loser: current_game.loser_id})
end

get '/game/tie' do

  erb (:tie)
end

post '/game/tie' do


end

#   <div id="player1-container" style="display:block">

#     <h3>Player 1</h3>
#     <% emojis.each do |emoji| %>
#     <input type="radio" name= "emoji" id="choice1">
#     <label for="choice1"><img src="<%= emoji.img_path %>" alt="rps"/></label>
#     <%end%>
# </div>
#  <div id="player2-container" style="display:block">

#     <h3>Player 2</h3>
#     <% emojis.each do |emoji| %>
#     <input type="radio" name= "<%=emoji.name%>" id="choice2">
#     <label for="choice2"><img src="<%= emoji.img_path %>" alt="rps"/></label>
#     <%end%>
