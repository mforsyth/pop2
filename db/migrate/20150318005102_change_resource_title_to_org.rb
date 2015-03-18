class ChangeResourceTitleToOrg < ActiveRecord::Migration
  def change
    rename_column :resources, :title, :organization
  end
end
