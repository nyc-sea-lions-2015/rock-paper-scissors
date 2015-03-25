# User seeding
player1 = User.create(name: 'Kirk')
player2 = User.create(name: 'Kahn')

# Hand seeding
rock = Hand.create(symbol: 'rock',
                 image_path: './images/rock.png')
paper = Hand.create(symbol: 'paper',
                 image_path: './images/paper.png')
scissors = Hand.create(symbol: 'scissors',
                 image_path: './images/scissors.png')
lizard = Hand.create(symbol: 'lizard',
                 image_path: './images/lizard.png')
spock = Hand.create(symbol: 'spock',
                 image_path: './images/spock.png')

# Hand many-to-many seeding

Beat.create(winner: rock,
            loser: scissors)
Beat.create(winner: rock,
            loser: lizard)
Beat.create(winner: paper,
            loser: rock)
Beat.create(winner: paper,
            loser: spock)
Beat.create(winner: scissors,
            loser: paper)
Beat.create(winner: scissors,
            loser: lizard)
Beat.create(winner: lizard,
            loser: paper)
Beat.create(winner: lizard,
            loser: spock)
Beat.create(winner: spock,
            loser: rock)
Beat.create(winner: spock,
            loser: scissors)