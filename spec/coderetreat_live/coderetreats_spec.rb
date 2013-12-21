require 'coderetreats/presenters/collection'
require 'coderetreats_finder'

describe CoderetreatLive::Coderetreats do
  describe ".runnign_today" do
    it "wraps coderetreats running today in a presenter" do
      running_today = double "running_today"
      stub_const("::Coderetreat", double(running_today: running_today))

      presenter = double

      CoderetreatLive::Coderetreats::Presenters::Collection.stub(:for).with(running_today) { presenter }
      expect(CoderetreatLive::Coderetreats.running_today).to be(presenter)
    end
  end
end
