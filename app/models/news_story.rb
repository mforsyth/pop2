class NewsStory < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :url
  validates_presence_of :publisher
  validates_presence_of :published_on
end

# == Schema Information
#
# Table name: news_stories
#
#  id           :integer(4)      not null, primary key
#  title        :string(255)
#  url          :string(255)
#  publisher    :string(255)
#  published_on :date
#  created_at   :datetime
#  updated_at   :datetime
#

