class AddWiseIdToBussinessPlan < ActiveRecord::Migration
  def change
    add_column :bussiness_plans, :wise_id, :integer
  end
end
