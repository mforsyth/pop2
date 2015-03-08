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
      ['Schedule of plantings/events', '/volunteer/schedule'],
      ['Sign up for POP\'s listserve', '/volunteer/signup'],
      ['POP committees', 'volunteer/committees'],
    ]
  end

end
