require 'spec_helper'

describe Api::UsersController do
  render_views
  fixtures(:users)
  let(:user1) { User.find(1) }
  let(:user2) { User.find(2) }

  before do
    controller.stub user: user1
  end

  describe :index do
    it 'should return an array containing all the users' do
      get :index, format: :json
      response.should be_success
    end
  end
end