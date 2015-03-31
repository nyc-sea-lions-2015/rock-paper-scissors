require 'spec_helper'
require 'pp'

describe 'index controller' do
  it "GET / works" do
  end

  context "GET /throw_2" do
    it "redirects without a session[:first_player_id] value" do
      get '/throw_2'
      expect(last_response).to be_redirect
    end

    it "does not redirect when the key is passed" do
      user = User.create name: "Frobson Bobson"
      get '/throw_2', {}, 'rack.session' => { :first_player_id => user.id }
      user.destroy
    end
  end
end
