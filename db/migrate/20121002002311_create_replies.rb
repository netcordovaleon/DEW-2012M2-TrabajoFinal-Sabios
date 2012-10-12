class CreateReplies < ActiveRecord::Migration
  def change
    create_table :replies do |t|
      t.integer :query_id
      t.text :content
      t.references :query

      t.timestamps
    end
    add_index :replies, :query_id
  end
end
