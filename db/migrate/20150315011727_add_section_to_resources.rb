class AddSectionToResources < ActiveRecord::Migration
  def change
    change_table :resources do |t|
      t.string :section
      t.string :nature
      t.string :audience
    end
  end
end
