require 'spec_helper'

describe CoderetreatsController do
  describe "GET /running_today" do
    it "gets the coderetreats running today" do
      coderetreat_presenter = double

      CoderetreatLive::Coderetreats.stub(:running_today) { coderetreat_presenter } 

      get :running_today
      expect(assigns(:coderetreats)).to be(coderetreat_presenter)
    end
  end
end
