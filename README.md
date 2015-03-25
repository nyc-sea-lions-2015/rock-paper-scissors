# Rock Paper Scissors

## Summary
Sometimes in life we have to make decesions with our friends. Like, who picks up the check, who gets the front seat, or even who gets to jump into the pool first. I don't know about you; but I normally solve these hard choices with a quick game of Rock, Paper, Scissors.

We are going to try an encompass all of the things we've learned up to this point to create an online version of the game Rock, Paper, Scissors. 

The challenge will be broken up into a few parts.

- **Release 0** Build a Sinatra Backend Server that manages standard CRUD request, and persist data.
- **Release 1** Create views to manage resources, and play a basic game.
- **Release 2** Enhance the UX (User Experience) using Javascript and JQuery. 
- **Release 3** Persist stats about the game via JQuery's implementation of AJAX.

### New Technology/Concept

**JQuery** | Use [Jquery](http://api.jquery.com) to interact with the DOM. 

**AJAX**   | Look at the [JQuery documentation](http://api.jquery.com/jquery.ajax) on how to create ajax request.

**Bcrypt** | Look at the [Bcrypt Gem](https://github.com/codahale/bcrypt-ruby) for help on authentication.


## Releases 
### Pre-release: The Rundown
In the source directory there is copy of the skeleton you've been building through the phase so far. This is a good learning opportunity: 
```text
Developers create skeletons like this because it optimizes basic configuration and setup, 
allowing us to focus on more complex ideas.
```
**Let me know if anything from the skeleton configuration seems to be incorrect**

Complete each release fully before moving on. Each part will build on itself. Remember, work with your pair, use good git hygiene, and most importantly have fun.


### Release 0: Building the backend
First, create a data model and save your schema design in the top level of the git repository. Here are some basic requirements.

- A game is played between two players.
- Each player is prompted to choose a symbol: Rock, Paper, or Scissors.
- Each symbol is represented by an image.
- After both players have selected, the game runs it's logic and a winner is choosen.
   - Rock Beats Scissors
   - Paper Beats Rock
   - Scissors Beat Paper
- After the game save the following information
   - the winning player
   - the loosing player
   - What symbol each player used for the game.
- Create a table named users, and seed it with two records. 
  - "Player One"
  - "Player Two"
- Create all of the models and wire up the associations

### Release 1: Building the game
Next we want to build our our basic game logic. Create a basic crud application that handles the games workflow.
Build out the views, add images for the symbols.

- "Player One" gets prompted to select either rock / paper / scissors 
- "Player Two" gets prompted to select either rock / paper/  scissors
- The Server runs the game logic and returns a winner
- You will want to right tests to enusre your game logic is operating correctly.
- The user is directed to the stats page and prompted to play another game. 

### Release 2: User Experience Enhancements
Now we are going to add some javascript to enhance the usability of the game. Encompass logic in objects were appropriate. Write tests them to make sure they are working correctly. 

- Change the way each player chooses their symbol. Instead of having to redirect for every page, use javascript to hide and show each their choices. 
- Once each player selects their choice the game counts down... Rock... Paper... Scissors... Shoot! 
- The server will run the game logic, record the stats, and redirect the users to a page showing the winner, and each players overall stats.


### Release 3: Save game statistics
Continuing with the Javascript enhancements, we are going to use Ajax to process the game.

- Update the application and change how we post the game data to the server. When the game finishes counting down, an Ajax Post will send both users choices to the server. 
- After the server returns the game logic, the DOM should update to display the winner.
- Use an Ajax Get, to return the new stats and render them on the page.
