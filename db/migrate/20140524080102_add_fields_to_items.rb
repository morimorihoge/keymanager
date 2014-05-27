class AddFieldsToItems < ActiveRecord::Migration
  def change
    add_column :items, :icon_name, :string
    add_column :items, :name, :string
  end
end
