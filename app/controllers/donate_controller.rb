class DonateController < ApplicationController
  def index
    
  end

  def levels
    
  end
  
  def self.sections  
    [
      ['Give', 'index'],
      ['Donation Levels', 'levels'],
    ]
  end

end
