class AddGuyToUser < ActiveRecord::Migration
  def change
    add_column :users, :guy, :integer
  end
end
