class Sell < ActiveRecord::Base
  belongs_to :bussiness_plan
  belongs_to :entrepreneur
  attr_accessible :address, :code, :credir_car, :date, :bussiness_plan_id, :entrepreneur_id
end
