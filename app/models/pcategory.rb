class Pcategory < ActiveRecord::Base
  has_many :pcategories
  attr_accessible :description, :name
end
