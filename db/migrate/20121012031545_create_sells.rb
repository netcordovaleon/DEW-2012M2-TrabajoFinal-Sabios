class CreateSells < ActiveRecord::Migration
  def change
    create_table :sells do |t|
      t.string :credir_car
      t.datetime :date
      t.string :code
      t.string :address
      t.references :bussiness_plan
      t.references :entrepreneur

      t.timestamps
    end
    add_index :sells, :bussiness_plan_id
    add_index :sells, :entrepreneur_id
  end
end
