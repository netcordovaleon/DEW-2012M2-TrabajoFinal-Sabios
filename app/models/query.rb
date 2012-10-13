class Query < ActiveRecord::Base
  belongs_to :bussiness_plan
  belongs_to :entrepreneur
  belongs_to :reply
  attr_accessible :bussiness_plan_id, :entrepreneur_id, :question, :status, :wise_id , :reply
end
