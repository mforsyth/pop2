ActiveAdmin.register Event do
  permit_params :when_starts, :when_text, :title, :place_name,
    :description, :address, :num_volunteers_needed, :rsvp_allowed

  index do
    column "When", :when_starts
    column "Activity", :title
    column :place_name
    actions
  end
  config.sort_order = 'when_starts_desc'

  show do
    attributes_table do
      row :when do |event|
        event.when_starts
      end
      row :when_text
      row :activity do |event|
        event.title
      end
      row :place_name
      row :description
      row :place_name
      row :num_volunteers_needed
      row :rsvp_allowed do |event|
        if event.rsvp_allowed?
          link_to("Yes - click for current RSVPS",
                  admin_event_rsvps_path(event))
        else
          'No'
        end
      end
    end
  end
  
  form do |f|
    f.inputs('Event Details') do
      f.input :when_starts, label: 'When', as: :datepicker
      f.input :when_text
      f.input :title, label: 'Activity'
      f.input :place_name
      f.input :description
      f.input :address, label: 'Location'
      f.input :num_volunteers_needed
      f.input :rsvp_allowed
      f.actions
    end
  end
end
