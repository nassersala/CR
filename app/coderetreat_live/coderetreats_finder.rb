require 'coderetreats/presenters/collection'

#drapper fixed this: he said that because module CoderetreatLive is arealdy loaded
#by rails, so if you you uncomment it would be like CoderetreatLive::CoderetreatLive::Coderetreats
#update: actullay this Drapper fix broke other stuff, therefore I had to change the filename for coderetreats_finder: TODO: invetigate
module CoderetreatLive
  module Coderetreats
    def self.running_today
      Presenters::Collection.for(::Coderetreat.running_today)
    end
  end
end
