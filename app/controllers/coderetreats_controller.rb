require 'coderetreats/presenters/collection'

Coderetreat = Struct.new :status, :location

class CoderetreatsController < ApplicationController
  def running_today
    coderetreats = 
      [
        Coderetreat.new("not_started", "Seatle"),
        Coderetreat.new("not_started", "Chicago"),
        Coderetreat.new("in_session", "Berlin")
    ]
    @coderetreats = CoderetreatLive::Coderetreats::Presenters::Collection.for(coderetreats)
  end
end
