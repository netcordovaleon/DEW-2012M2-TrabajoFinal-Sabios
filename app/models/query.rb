class Query < ActiveRecord::Base
  belongs_to :bussiness_plan
  belongs_to :entrepreneur
  attr_accessible :bussiness_plan_id, :entrepreneur_id, :question, :status
end
