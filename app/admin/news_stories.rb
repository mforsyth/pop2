ActiveAdmin.register NewsStory do
  permit_params :title, :url, :publisher, :published_on

  index do
    column :publisher
    column :published_on
    column :title
    actions
  end
  config.sort_order = 'published_on_asc'

  show do
    attributes_table do
      row :title
      row :publisher
      row :published_on
      row :url
    end
  end
  
  form(html: {class: 'direct-upload'}) do |f|
    f.inputs('News Story Details') do
      f.input :title
      f.input :publisher
      f.input :published_on, as: :datepicker
      f.input :url
      f.actions
    end
  end
end
