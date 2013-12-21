require 'coderetreats_finder'

class CoderetreatsController < ApplicationController
  def running_today
    @coderetreats = CoderetreatLive::Coderetreats.running_today
  end
end
