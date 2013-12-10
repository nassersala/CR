require 'coderetreats/presenters/collection'

describe CoderetreatLive::Coderetreats::Presenters::Collection do
  context "getting the coderetreats goruped by status" do
    let(:not_started) { double("not_started", status: "not_started") }
    let(:in_session) { double("in_session", status: "in_session") }
    let(:coderetreats) { [not_started, in_session] }
    let(:presenter) { CoderetreatLive::Coderetreats::Presenters::Collection.for(coderetreats) }

    it "exposes those in status not_started" do
      expect{|b| presenter.not_started(&b) }.to yield_successive_args(not_started)
    end

    it "exposes those in status in_session" do
      expect{|b| presenter.in_session(&b) }.to yield_successive_args(in_session)
    end
  end
end
