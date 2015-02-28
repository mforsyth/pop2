ActiveAdmin.register Rsvp do
  belongs_to :event
  
#  actions :edit, :update, :delete, :create
  config.filters = false
  
  permit_params :event_id, :name, :attending, :email, :how_many,
    :board_or_committe

  index do
    column :attending
    column :name
    column :email
    column :how_many
    column :board_or_committe
    actions
  end

  form do |f|
    f.inputs('Edit RSVP for ' + f.object.event.title) do
      f.input :attending
      f.input :name
      f.input :email
      f.input :how_many
      f.input :board_or_committee
      f.actions
    end
  end
end
