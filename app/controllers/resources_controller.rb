class ResourcesController < ApplicationController
  
  def index
    @resources = Resource.order("priority asc")
  end

  def self.sections
    Resource.order("priority asc").map { |r|
      [r.title, r.url]
    }
  end

end
