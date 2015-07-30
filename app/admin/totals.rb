ActiveAdmin.register Setting, as: "Totals" do
  menu false
  actions :show, :edit, :update

  permit_params :num_orchards_supported, :orchards_planted, :trees_planted,
                :berry_bushes_planted, :num_perennials

  show title: 'Totals' do
    attributes_table do
      row :num_orchards_supported
      row :orchards_planted
      row :trees_planted
      row :berry_bushes_planted, label: 'Shrubs and Vines'
      row :num_perennials
    end
  end

  form do |f|
    f.inputs('Totals') do
      f.input :num_orchards_supported
      f.input :orchards_planted
      f.input :trees_planted
      f.input :berry_bushes_planted, label: 'Shrubs and Vines'
      f.input :num_perennials
      f.submit(value: 'Update Totals')
    end
  end
end
