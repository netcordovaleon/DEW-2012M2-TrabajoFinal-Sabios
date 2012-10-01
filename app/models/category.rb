class Category < ActiveRecord::Base
  belongs_to :pcategory
  has_many :bussiness_plans
  attr_accessible :description, :name, :pcategory_id
end
