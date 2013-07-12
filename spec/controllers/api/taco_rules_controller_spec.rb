require "spec_helper"

describe Api::TacoRulesController do
  render_views
  fixtures(:taco_rules)
  let(:team) { Team.find(1) }

  describe :create do
    valid_arguments = { description: "Late without notice", team_id: 1 }

    it "should create a new taco_rule for the team indicated" do
      expect do
        post :create, taco_rule: valid_arguments
      end.to change{ team.taco_rules.count }.from(1).to(2)
    end

    it "should respond with the taco rules's information" do
      expected_response = %(
        {
          "team_id": 1,
          "description": "Late without notice"
        }
      )
      post :create, taco_rule: valid_arguments
      expect(response.body).to be_json_eql expected_response
    end
  end

  describe :destroy do
    it "should decrement the teams's taco rules by one" do
      expect do
        delete :destroy, id: 1
      end.to change{team.taco_rules.count}.from(1).to(0)
    end
  end
end
