class Wise < ActiveRecord::Base
  belongs_to :user
  attr_accessible :apellation, :banck_account, :bank, :summary, :website, :user_id
end