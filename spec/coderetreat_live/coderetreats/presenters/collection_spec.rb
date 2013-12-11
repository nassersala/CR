require 'coderetreats/presenters/collection'

describe CoderetreatLive::Coderetreats::Presenters::Collection do
  context "getting the coderetreats goruped by status" do
    let(:not_started) { double("not_started", status: "not_started") }
    let(:in_session) { double("in_session", status: "in_session") }
    let(:on_break) { double("on_break", status: "on_break") }
    let(:coderetreats) { [not_started, in_session, on_break] }
    let(:presenter) { CoderetreatLive::Coderetreats::Presenters::Collection.for(coderetreats) }

    it "exposes those in status not_started" do
      expect{|b| presenter.not_started(&b) }.to yield_successive_args(not_started)
    end

    it "exposes those in status in_session" do
      expect{|b| presenter.in_session(&b) }.to yield_successive_args(in_session)
    end

    it "exposes those in status on_break" do
      expect{|b| presenter.on_break(&b) }.to yield_successive_args(on_break)
    end
  end
end
