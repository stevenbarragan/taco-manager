require "spec_helper"

describe Api::TacoPointsController do
  render_views

  let(:user) { User.find(1) }

  describe :create do
    valid_arguments = { user_id: "1", description: "Yolo Driven Development" }

    it "should create a new taco_point for the user indicated" do
      expect do
        post :create, taco_point: valid_arguments
      end.to change{ user.taco_points.count }.from(1).to(2)
    end

    it "should respond with the taco point's information" do
      expected_response = %(
        {
          "user_id": 1,
          "description": "Yolo Driven Development"
        }
      )
      post :create, taco_point: valid_arguments
      expect(response.body).to be_json_eql expected_response
    end
  end

  describe :destroy do
    it "should decrement the user's taco points by one" do
      expect do
        delete :destroy, id: 1
      end.to change{user.taco_points.count}.from(1).to(0)
    end
  end
end
