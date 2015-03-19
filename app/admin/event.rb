ActiveAdmin.register Event do
  permit_params :when_text, :title, :place_name,
    :description, :address, :num_volunteers_needed, :rsvp_allowed,
    :when_starts_date, :when_starts_time_hour, :when_starts_time_minute

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
        event.when_starts.to_formatted_s(:event_display)
      end
      row :when_text
      row :activity do |event|
        event.title
      end
      row :place_name
      row :description
      row :location do |event|
        event.address
      end
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
      f.input :when_starts, label: 'When', as: :just_datetime_picker
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
