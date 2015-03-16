ActiveAdmin.register Resource do
  
  index do
    column :section
    column :title
    column :description
    column :nature, as: 'Type'
    column :audience
    actions
  end
  config.sort_order = 'section_asc'
  config.filters = false

  show do
    attributes_table do
      row :section do |r| 
        Resource::SECTIONS.rassoc(r.section).first
      end
      row :title
      row :url do |resource|
        link_to('Download', resource.url)
      end
      row :description
      row :nature, as: 'Type'
      row :audience
    end
  end
  
  permit_params :section, :title, :description, :url, :external_url,
    :nature, :audience
  
  form(html: {class: 'direct-upload'}) do |f|
    f.inputs('Board Member Details') do
      f.input :section, as: :select, collection: Resource::SECTIONS
      f.input :title
      f.input :external_url, label: 'External link url...'
      f.input :url, as: :file, label: '... or upload a file'
      f.input :description
      f.input :nature, label: 'Type'
      f.input :audience
      f.actions
    end

    allow_upload(f, :url, 'resources')
  end

end
