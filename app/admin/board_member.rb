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

  form(html: {class: 'direct-upload'}) do |f|
    s3_direct_post = S3_BUCKET
      .presigned_post(key: "board_pics/${filename}",
                      success_action_status: 201, acl: :public_read)

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
    
    f.insert_tag(Arbre::HTML::Script) {
      raw <<DONE
      $(function() {
        allowS3Upload($('#board_member_image'), '#{s3_direct_post.url}', #{s3_direct_post.fields.to_json.html_safe})
 });
DONE
    }
  end
end
