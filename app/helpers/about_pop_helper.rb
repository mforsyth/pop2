module AboutPopHelper       
  def headshot name
    image_tag "headshots/#{name.to_s}.jpg", :align => :right, :class => 'headshot'
  end
end
