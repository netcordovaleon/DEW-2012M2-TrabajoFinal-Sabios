class Entrepreneur < ActiveRecord::Base
  belongs_to :user
  attr_accessible :user_id

  
end

