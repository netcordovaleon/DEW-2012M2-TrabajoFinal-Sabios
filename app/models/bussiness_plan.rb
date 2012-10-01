class BussinessPlan < ActiveRecord::Base
  belongs_to :category
  attr_accessible :net_margin, :reason, :roi, :runtime, :title, :total_investment, :vision, :category_id, :status
end
