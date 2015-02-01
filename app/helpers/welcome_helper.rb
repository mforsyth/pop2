module WelcomeHelper

  def image_with_caption(img, cap)
    (image_tag "newsletter/#{img}.jpg", :width => "100%") +
      content_tag(:div, :class => :caption) do cap end
  end
end
