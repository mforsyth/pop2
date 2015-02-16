# == Schema Information
#
# Table name: board_members
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  position    :string(255)
#  outside_job :string(255)
#  description :text
#  image       :string(255)
#  order       :integer(4)
#  created_at  :datetime
#  updated_at  :datetime
#

class BoardMember < ActiveRecord::Base
  validates_presence_of :first_name
  validates_presence_of :last_name
  validates_numericality_of :rank, :only_integer => true, :allow_nil => true

  # file_column :image

  def name
    "#{first_name} #{last_name}"
  end
end

