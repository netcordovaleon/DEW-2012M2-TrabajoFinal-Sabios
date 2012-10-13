class BussinessPlan < ActiveRecord::Base
  belongs_to :category
   has_many	 :queries
  attr_accessible :net_margin, :reason, :roi, :runtime, :title, :total_investment, :vision, :category_id, :status, :id,:coment, :wise_id
end
