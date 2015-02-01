class VolunteerController < ApplicationController

  def index
  end

  def schedule
  end

  def signup
  end

  def committees
  end

  def self.sections
    [
      ['Schedule of plantings/events', 'schedule'],
      ['Sign up for POP\'s listserve', 'signup'],
      ['POP committees', 'committees'],
    ]
  end

end
