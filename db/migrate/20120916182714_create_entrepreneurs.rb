class CreateEntrepreneurs < ActiveRecord::Migration
  def change
    create_table :entrepreneurs do |t|
      t.references :user

      t.timestamps
    end
    add_index :entrepreneurs, :user_id
  end
end
