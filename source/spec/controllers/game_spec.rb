require_relative '../spec_helper'

describe 'Index Text' do

  it 'should get the index route' do
    get '/'
    expect( last_response ).to be_ok
    expect( last_response.body ).to include('Start Battle') 
  end

end


describe 'Game Test' do

  let!(:player_1) { User.create(username: 'player_one') }
  let!(:player_2) { User.create(username: 'player_two') }
  
  let!(:rock) {    Token.create(name: 'rock', url: '/') }
  let!(:paper) {    Token.create(name: 'paper', url: '/') }

  describe "Get a game" do
    it 'Should get a new game form' do 
      get '/games'
      expect( last_response ).to be_ok
      expect( last_response.body ).to include('form') 
      expect( last_response.body ).to include("action='/games'") 
      expect( last_response.body ).to include("method='post'") 
    end
  end

  describe "Create a Game" do
    it 'should create a new game' do 
     expect{ post '/games', { player_id: [player_1.id,player_2.id], 
                              player_throw: [rock.id, paper.id] }}.to change{ Game.all.length }.by(1)
    end

    it 'should redirect' do 
      post '/games', { player_id: [player_1.id,player_2.id], 
                       player_throw: [rock.id, paper.id] }

      expect( last_response ).to be_redirect
    end

    it 'should go to /games if it is a tie' do
      post '/games', { player_id: [player_1.id,player_2.id], 
                       player_throw: [paper.id, paper.id] }

      expect( last_response ).to be_redirect
      follow_redirect!
      expect( last_response ).to be_ok
      expect( last_response.body ).to include('Shoot')
      expect( last_response.body ).to include('THE GAME WAS A TIE... SHOOT AGAIN!')
    end 
  end


end
