class CreateQueries < ActiveRecord::Migration
  def change
    create_table :queries do |t|
      t.integer :bussiness_plan_id
      t.integer :entrepreneur_id
      t.string :question
      t.integer :status
      t.references :bussiness_plan
      t.references :entrepreneur

      t.timestamps
    end
    add_index :queries, :bussiness_plan_id
    add_index :queries, :entrepreneur_id
  end
end
