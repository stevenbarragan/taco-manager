require "spec_helper"

describe Api::TeamsController do
  render_views
  fixtures(:teams)
  let(:team1) { Team.find(1) }
  let(:team2) { Team.find(2) }

  describe :create do
    valid_arguments = { name: "Yolo Team" }

    it "should create a new team and respond with the record" do
      expected_response = %(
          {
            "name": "Yolo Team"
          }
        )
      post :create, team: valid_arguments
      expect(response.body).to be_json_eql expected_response
      Team.count.should be 3
    end
  end

  describe :destroy do
    it "should destroy the team record" do
      expect do
        delete :destroy, id: 1
      end.to change{Team.count}.from(2).to(1)
    end
  end

  describe :index do
    it "should return an array containing all the teams" do
      get :index
      expected_response = {
        teams: [team1, team2]
      }.to_json

      expect(response.body).to be_json_eql expected_response
    end
  end

  describe :show do
    it "should return respond with the teams's info" do
      get :show, id: 1
      expected_response = team1.to_json

      expect(response.body).to be_json_eql expected_response
    end
  end

  describe :update do
    it "should update the teams's attributes" do
      put :update, id: 1, team: { name: 'brand_new_name' }
      expect(Team.find(1).name).to eq "brand_new_name"
    end
  end
end
