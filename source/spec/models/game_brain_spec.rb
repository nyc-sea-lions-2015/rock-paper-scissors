
require_relative "../spec_helper"

describe "Game Brain" do

  let!(:player_1) { User.create(username: 'player_one') }
  let!(:player_2) { User.create(username: 'player_two') }
  
  let!(:rock) {    Token.create(name: 'rock', url: '/') }
  let!(:paper) {    Token.create(name: 'paper', url: '/') }
  let!(:scissor) {    Token.create(name: 'scissors', url: '/') }

  let!(:params) { {player_one_id: player_1.id,
                  player_two_id: player_2.id,
                  player_one_throw: rock.id,
                  player_two_throw: paper.id}}

  it "should initialize winner and loser" do
    brain = GameBrain.new(params)

    expect(brain.winner).to_not be_nil
    expect(brain.loser).to_not be_nil
  end 

  it "should choose the correct winner rock vs paper" do
    params[:player_one_throw] = paper.id
    params[:player_two_throw] = rock.id

    brain = GameBrain.new(params)
    
    expect(brain.winner).to eq( {player: player_1, token: paper } )
    expect(brain.loser).to  eq( {player: player_2, token: rock } )
  end

  it "should choose the correct winner paper vs scissors" do
    params[:player_one_throw] = scissor.id
    params[:player_two_throw] = paper.id

    brain = GameBrain.new(params)
    
    expect(brain.winner).to eq( {player: player_1, token: scissor} )
    expect(brain.loser).to  eq( {player: player_2, token: paper } )
  end
  
  it "should choose the correct winner scissors vs rock" do
    params[:player_one_throw] = rock.id
    params[:player_two_throw] = scissor.id

    brain = GameBrain.new(params)
    
    expect(brain.winner).to eq( {player: player_1, token: rock } )
    expect(brain.loser).to  eq( {player: player_2, token: scissor } )
  end

  it "should choose the correct winner rock vs paper player-2" do
    params[:player_one_throw] = rock.id
    params[:player_two_throw] = paper.id

    brain = GameBrain.new(params)
    
    expect(brain.winner).to eq( {player: player_2, token: paper } )
    expect(brain.loser).to  eq( {player: player_1, token: rock } )
  end

  it "should choose the correct winner paper vs scissors" do
    params[:player_one_throw] = paper.id
    params[:player_two_throw] = scissor.id

    brain = GameBrain.new(params)
    
    expect(brain.winner).to eq( {player: player_2, token: scissor} )
    expect(brain.loser).to  eq( {player: player_1, token: paper } )
  end
  
  it "should choose the correct winner scissors vs rock" do
    params[:player_one_throw] = scissor.id
    params[:player_two_throw] = rock.id

    brain = GameBrain.new(params)
    
    expect(brain.winner).to eq( {player: player_2, token: rock } )
    expect(brain.loser).to  eq( {player: player_1, token: scissor } )
  end
  it "should throw an expection if there is a tier" do
    
    params[:player_one_throw] = scissor.id
    params[:player_two_throw] = scissor.id

    expect{ GameBrain.new(params) }.to raise_error('tie');

  end
end
