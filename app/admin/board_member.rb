ActiveAdmin.register BoardMember do
  permit_params :first_name, :last_name, :position,
    :outside_job, :description, :image, :rank

  index do
    column :first_name
    column :last_name
    column :position
    column :rank
    actions
  end
  
  config.sort_order = 'rank_asc'

  config.filters = false

  form do |f|
    f.inputs('Board Member Details') do
      f.input :first_name
      f.input :last_name
      f.input :position
      f.input :outside_job
      f.input :description
      f.input :image
      f.input :rank
      f.actions
    end
  end
end
