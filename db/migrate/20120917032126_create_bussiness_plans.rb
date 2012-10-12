class CreateBussinessPlans < ActiveRecord::Migration
  def change
    create_table :bussiness_plans do |t|
      t.string :title
      t.text :vision
      t.text :reason
      t.integer :runtime
      t.integer :total_investment
      t.integer :net_margin
      t.string :roi
      t.references :category

      t.timestamps
    end
    add_index :bussiness_plans, :category_id
  end
end
