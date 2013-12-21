require 'coderetreats/presenters/collection'

#drapper fixed this: he said that because module CoderetreatLive is arealdy loaded
#by rails, so if you you uncomment it would be like CoderetreatLive::CoderetreatLive::Coderetreats
module CoderetreatLive
  module Coderetreats
    def self.running_today
      Presenters::Collection.for(::Coderetreat.running_today)
    end
  end
end
