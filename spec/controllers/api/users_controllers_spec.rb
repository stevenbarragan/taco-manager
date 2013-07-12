require "spec_helper"

describe Api::UsersController do
  render_views
  fixtures(:users)
  let(:user1) { User.find(1) }
  let(:user2) { User.find(2) }

  describe :create do
    valid_arguments = { name: "Eddy", team_id: 1 }

    it "should create a new user and respond with the record" do
      expected_response = %(
          {
            "name": "Eddy",
            "team_id": 1,
            "current_tacopoints": 0,
            "total_tacopoints": 0,
            "sponsor_count": 0
          }
        )
      post :create, user: valid_arguments
      expect(response.body).to be_json_eql expected_response
      User.count.should be 3
    end
  end

  describe :destroy do
    it "should destroy the user record" do
      expect do
        delete :destroy, id: 1
      end.to change{User.count}.from(2).to(1)
    end
  end

  describe :index do
    it "should return an array containing all the users" do
      get :index
      expected_response = {
        users: [user1, user2]
      }.to_json

      expect(response.body).to be_json_eql expected_response
    end
  end

  describe :show do
    it "should return respond with the user's info" do
      get :show, id: 1
      expected_response = user1.to_json

      expect(response.body).to be_json_eql expected_response
    end
  end

  describe :update do
    it "should update the user's attributes" do
      put :update, id: 1, user: { name: 'brand_new_name' }
      expect(User.find(1).name).to eq "brand_new_name"
    end
  end
end
