class Reply < ActiveRecord::Base
  belongs_to :query
  attr_accessible :content, :query_id
end
