class AbsoluteUrlBoardImages < ActiveRecord::Migration
  def change
    BoardMember.all.each {|member|
      if member.image.present? && !member.image.start_with?("http")
        new_image = "https://#{ENV['S3_BUCKET']}.s3.amazonaws.com/board_pics/#{member.id}/#{member.image}"
        puts "updating image url of board member #{member.id} to #{new_image}"
        member.update_attribute(:image, new_image)
      end
    }
  end
end
