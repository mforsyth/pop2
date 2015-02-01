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
      ['Map', 'map'],
      ['POP orchards planted', 'index'],
      ['POP Partner Application', 'develop'],
      ['How POP Plants', 'permaculture'],
      ['Plants POP Plants', 'plants'],
      ['Links', 'links']
    ]
  end

end
