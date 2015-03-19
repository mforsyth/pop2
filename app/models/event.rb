class Event < ActiveRecord::Base

  just_define_datetime_picker :when_starts

  has_many :rsvps

  def to_label
    "#{title}: #{place_name}"
  end

  class << self
    def upcoming(length=10)
      where('when_starts >= ?', DateTime.now.beginning_of_day)
        .limit(length)
        .order('when_starts asc')
    end
  end
end

# == Schema Information
#
# Table name: events
#
#  id          :integer(4)      not null, primary key
#  title       :string(255)
#  when_starts :datetime
#  address     :string(255)
#  place_name  :string(255)
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#  when_text   :string(255)
#
