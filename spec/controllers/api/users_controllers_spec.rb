require "spec_helper"

describe Api::UsersController do
  render_views
  fixtures(:users)
  let(:user1) { User.find(1) }
  let(:user2) { User.find(2) }

  before do
    controller.stub user: user1
  end

  describe :index do
    it "should return an array containing all the users" do
      get :index, format: :json
      expected_response = %(
          {
            "users":[{
              "name": "iwano",
              "team_id": 1,
              "current_tacopoints": 0,
              "total_tacopoints": 0,
              "sponsor_count": 0
            },
            {
              "name": "Steven",
              "current_tacopoints": 0,    
              "sponsor_count": 0,
              "team_id": 1,
              "total_tacopoints": 0
           }]
          }
        )

        expect(response.body).to be_json_eql expected_response
    end
  end
end