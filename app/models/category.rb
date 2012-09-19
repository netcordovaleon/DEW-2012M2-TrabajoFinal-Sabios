class Category < ActiveRecord::Base
  has_many :bussiness_plans
  attr_accessible :description, :name
end
