class ResourcesController < ApplicationController
  
  def index
    @resources = Resource.order("priority asc")
  end

  def self.sections  
    [
    ]
  end

end
