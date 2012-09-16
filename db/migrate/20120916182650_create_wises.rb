class CreateWises < ActiveRecord::Migration
  def change
    create_table :wises do |t|
      t.string :apellation
      t.text :summary
      t.string :website
      t.string :bank
      t.string :banck_account
      t.references :user

      t.timestamps
    end
    add_index :wises, :user_id
  end
end
