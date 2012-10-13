class User < ActiveRecord::Base

  acts_as_authentic

  # Include default devise modules. Others available are:
  # :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  #attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
attr_accessible :addres, :birth_date, :cellular, :document_number, :document_type, :email, :firstname, :lastname, :name, :sexo,:password_confirmation, :remember_me,:password, :username,:guy




end
