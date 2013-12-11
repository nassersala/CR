require 'spec_helper'

describe CoderetreatsController do
  describe "GET /running_today" do
    it "uses a coderetreats collection presenter" do
      coderetreat_presenter = double

      CoderetreatLive::Coderetreats::Presenters::Collection.stub(:for) { coderetreat_presenter } 

      get :running_today
      expect(assigns(:coderetreats)).to be(coderetreat_presenter)
    end
  end
end
