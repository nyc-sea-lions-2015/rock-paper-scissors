require_relative '../spec_helper'

describe 'Game Test' do

  let!(:player_1) { User.create(username: 'player_one') }
  let!(:player_2) { User.create(username: 'player_two') }
  
  let!(:rock) {    Token.create(name: 'rock', url: '/') }



  it 'should create a new game' do 
   expect{ post '/games', { player_one_id: player_1.id, 
                            player_two_id: player_2.id,
                            player_one_throw: rock.id,
                            player_two_throw: rock.id  }

         }.to change{ Game.all.length }.by(1)
  end

  it 'should create a new game' do 
    post '/games', { player_one_id: player_1.id, 
                            player_two_id: player_2.id,
                            player_one_throw: rock.id,
                            player_two_throw: rock.id  }

    expect( last_response ).to be_redirect
  end
end
