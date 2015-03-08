module ActiveAdmin::ViewsHelper
  def allow_upload(form, field_name, s3_dir)
    s3_direct_post = S3_BUCKET
      .presigned_post(key: "#{s3_dir}/${filename}",
                      success_action_status: 201,
                      acl: :public_read,
                     )
      .where(:content_type).starts_with("")

    form.insert_tag(Arbre::HTML::Script) {
      raw <<DONE
      $(function() {
        allowS3Upload($('##{form.object.class.name.underscore}_#{field_name}'), '#{s3_direct_post.url}', #{s3_direct_post.fields.to_json.html_safe})
 });
DONE
    }
    
  end
end 
