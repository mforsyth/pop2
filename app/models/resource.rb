class Resource < ActiveRecord::Base

  SECTIONS = [['POP Handouts and Resources', 'pop_handouts'],
              ['Curriculum Links', 'curriculum'],
              ['Food Preservation Links', 'food_preservation'],
              ['Orchard Care Links', 'orchard_care'],
              ['Recipes and Nutrition Links', 'recipes_nutrition']]

  validates_presence_of :organization
  validates_presence_of :section
  validates_inclusion_of :section, in: SECTIONS.map(&:last)

  attr_accessor :external_url

  before_validation do
    self.url = external_url if url.blank? && external_url.present?
  end

end
