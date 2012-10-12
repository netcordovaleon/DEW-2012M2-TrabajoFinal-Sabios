class AddComentToBussinessPlans < ActiveRecord::Migration
  def change
    add_column :bussiness_plans, :coment, :text
  end
end
