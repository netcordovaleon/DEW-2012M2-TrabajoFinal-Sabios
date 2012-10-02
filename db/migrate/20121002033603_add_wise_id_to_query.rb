class AddWiseIdToQuery < ActiveRecord::Migration
  def change
    add_column :queries, :wise_id, :integer
  end
end
