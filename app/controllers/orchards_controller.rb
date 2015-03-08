class OrchardsController < ApplicationController

  def index
  end
  
  def map
  end
  
  def planted
  end
  
  def develop
  end
  
  def permaculture
  end
  
  def plants
  end
  
  def links  
  end

  def self.sections
    [
      ['Map', '/orchards/map'],
      ['POP orchards planted', '/orchards/'],
      ['POP Partner Application', '/orchards/develop'],
      ['How POP Plants', '/orchards/permaculture'],
      ['Plants POP Plants', '/orchards/plants'],
      ['Links', '/orchards/links']
    ]
  end

end
