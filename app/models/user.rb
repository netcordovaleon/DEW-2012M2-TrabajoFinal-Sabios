class User < ActiveRecord::Base
  has_many :entrepreneur
  attr_accesible :addres, :birth_date, :cellular, :document_number, :document_type, :email, :firstname, :lastname, :name, :password, :sexo


  

end
