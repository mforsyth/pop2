class Setting < ActiveRecord::Base
  
  def to_label
    'Totals'
  end
end

# == Schema Information
#
# Table name: settings
#
#  id                   :integer(4)      not null, primary key
#  trees_planted        :integer(4)      default(0)
#  berry_bushes_planted :integer(4)      default(0)
#  created_at           :datetime
#  updated_at           :datetime
#  orchards_planted     :integer(4)      default(14)
#

