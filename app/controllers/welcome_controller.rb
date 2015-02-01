class WelcomeController < ApplicationController
  
  def index
    # nuttin honey
  end

  def news
    @hide_right_bar = true
  end

  def self.sections  
    [['Home', 'index'], ['News', 'news']]
  end
end
