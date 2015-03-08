class DonateController < ApplicationController
  def index
    
  end

  def levels
    
  end
  
  def self.sections  
    [
      ['Give', '/donate'],
      ['Donation Levels', '/donate/levels'],
    ]
  end

end
