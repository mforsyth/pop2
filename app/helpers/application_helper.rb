# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def random_snapshot
    image_tag "snapshot_#{(rand 4) + 1}.png", :class => 'snapshot'
  end

  def sections_for the_controller
    return "" unless the_controller.respond_to? :sections
    str = ""
    for section in the_controller.sections		  
      str << "<div>#{link_to section.first, section.last}</div>\n"
    end
    raw str
  end

  # Clear both css floats (right and left).  
  # use this to 
  # (1) ensure that content below gets put BELOW where this call occurs  
  # (2) ensure that the height of the containing element extends down far enough to include this call
  def clearboth 
    raw '<div class="cl"> </div>'
  end
  
  # Use this when you want to say "1 item" or "2 items" depending on how many items
  # there are in the collection.  Why is this not a part of Rails already?
  def pluralize_collection collection, noun 
     if collection.size == 1 
       "1 #{noun}"
     else 
       "#{collection.size} #{noun.pluralize}"
     end
  end

end
