class Rsvp < ActiveRecord::Base
  default_scope { order('name ASC') }
  
  belongs_to :event
  
  validates_presence_of :event, :message => 'you are attending must be specified.'
  validates_presence_of :name, :message => 'must be provided so we know who will be attending!'
  validates_presence_of :how_many, :message => "people are you bringing?"
  validates_numericality_of :how_many, :message => 'people are you bringing?  Please type a NUMBER.'

  validates_uniqueness_of :name, :scope => :event_id, :message => 'You have already RSVP-d to this event!'
  validates_uniqueness_of :email, :scope => :event_id, :message => 'You have already RSVP-d to this event!'
  
  def attending_pretty
     attending? ? 'Yes' : 'No'
  end

  def name_with_bringing
    "".tap { |str|
      str << '<b>' if board_or_committee?
      str << name
      str << " (+#{how_many - 1})" if how_many > 1
      str << '</b>' if board_or_committee?
    }
  end
end

# == Schema Information
#
# Table name: rsvps
#
#  id                 :integer(4)      not null, primary key
#  name               :string(255)     not null
#  event_id           :integer(4)      not null
#  attending          :boolean(1)      default(FALSE)
#  created_at         :datetime
#  updated_at         :datetime
#  email              :string(255)
#  how_many           :integer(4)      default(1)
#  board_or_committee :boolean(1)      default(FALSE)
#

