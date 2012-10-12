class AddPcategoryIdToCategories < ActiveRecord::Migration
  def change
    add_column :categories, :pcategory_id, :integer
  end
end
