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

  show do
    attributes_table do
      row :first_name
      row :last_name
      row :position
      row :outside_job
      row :description
      row :image do |board_member|
        image_tag(board_member.image)
      end
      row :rank
    end
  end
  
  form(html: {class: 'direct-upload'}) do |f|
    f.inputs('Board Member Details') do
      f.input :first_name
      f.input :last_name
      f.input :position
      f.input :outside_job
      f.input :description
      f.input :image, as: :file
      f.input :rank
      f.actions
    end

    allow_upload(f, :image, 'board_pics')
  end

end
