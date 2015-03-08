ActiveAdmin.register Resource do
  
  permit_params :priority, :title, :url

  index do
    column :priority
    column :title
    actions
  end
  config.sort_order = 'priority_asc'
  config.filters = false

  show do
    attributes_table do
      row :title
      row :url do |resource|
        link_to('Download', resource.url)
      end
      row :priority
    end
  end
  
  form(html: {class: 'direct-upload'}) do |f|
    f.inputs('Board Member Details') do
      f.input :title
      f.input :url, as: :file
      f.input :priority
      f.actions
    end

    allow_upload(f, :url, 'resources')
  end

end
