# Rock Paper Scissors

## Summary
Sometimes in life we have to make decesions with our friends. Like, who picks up the check, who gets the front seat, or even who gets to jump into the pool first. I don't know about yinz; but I normally solve these hard choices with a quick game of Rock, Paper, Scissors.

We are going to try an encompass all of the things we've learned up to this point to create an online version of the game Rock, Paper, Scissors. 

The challenge will be broken up into a few parts.

- **Release 0** Build a Sinatra Backend Server that manages standard CRUD request, and persist data.
- **Release 1** Create views to manage resources, and play a basic game.
- **Release 2** Enhance the UX (User Experience) using Javascript and JQuery. 
- **Release 3** Persist stats about the game via JQuery's implementation of AJAX.
- **Release 4** Add Authentication for multiple users w/ migrations.

### New Technology/Concept

**JQuery** | Use [Jquery](http://api.jquery.com) to interact with the DOM. 

**AJAX**   | Look at the [JQuery documentation](http://api.jquery.com/jquery.ajax) on how to create ajax request.

**Bcrypt** | Look at the [Bcrypt Gem](https://github.com/codahale/bcrypt-ruby) for help on authentication.


## Releases 
### Pre-release: The Rundown
In the source directory there is copy of the skeleton you've been building through the phase so far. This is a good learning oppertunity: 
```text
We create skeletons like this because we are developers who like to optimize our lives. Now that we have a basic configuration we know is in good standing, we can continue to use it. Application prototyping time speeds up.
```
**Let me know if anything from the skeleton configuration seems to be incorrect**

Complete each release fully before moving on. Each part will build on itself. Remember, work with your pair, use good git hygiene, and most importantly have fun.


### Release 0: Building the backend
First, create a data model and save your schema design in the top level of the git repository. Here are some basic requirments.

- A game is played between two players.
- Each player is promopted to choose a symbol: Rock, Paper, or Scissors.
- Each sybmole is represented by a symbol
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
Next we want to build our the game and it's logic. Create a basic crud application that handles the games workflow.
Build out the views, add images for the sybmoles

- "Player One" gets promted to select either rock / paper / scissors 
- "Player Two" gets promted to select either rock / paper/  scissors
- The Server runs the game logic and returns a winner
- The user is directed to the stats page and prompted to play another game. 

### Release 2: User Experience Enhancements



### Release 3: Save game statistics

### Release 4: Adding Authentication

## Conclusion
