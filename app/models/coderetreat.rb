class Coderetreat < ActiveRecord::Base

  def self.running_today
    all
  end

  def update_status(new_status)
    self.update_attributes status: new_status
  end

  def available_next_statuses
   ["not_started", "in_session", "on_break"] - [self.status]
  end
end
