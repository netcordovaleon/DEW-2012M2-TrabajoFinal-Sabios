class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :firstname
      t.string :lastname
      t.string :sexo
      t.string :document_type
      t.string :document_number
      t.string :email
      t.string :cellular
      t.string :addres
      t.string :birth_date
      t.string :password

      t.timestamps
    end
  end
end
