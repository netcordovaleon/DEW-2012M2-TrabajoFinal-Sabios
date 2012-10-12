class AddStatusToBussinessPlans < ActiveRecord::Migration
  def change
    add_column :bussiness_plans, :status, :string
  end
end
