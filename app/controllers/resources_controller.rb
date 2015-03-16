class ResourcesController < ApplicationController

  def index
  end

  def show
    @section_key = params[:id]
    unless @section = Resource::SECTIONS.rassoc(@section_key)
      raise ActionController::RoutingError
        .new("Unknown section #{@section}.")
    end
    @section_title = @section.first
    @resources = Resource.where(section: @section_key)
      .order("priority asc")
  end

  SECTIONS = Resource::SECTIONS.map { |section|
    [section.first, "/resources/#{section.last}"]
  } << ['Organizational Links', '/orchards/links'];

  def self.sections
    SECTIONS
  end

end
